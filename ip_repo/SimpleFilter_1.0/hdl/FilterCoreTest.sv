`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/21/2021 01:27:16 PM
// Design Name: 
// Module Name: FilterCoreTest
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module FilterCoreTest(

    );
    
    reg clk;
    reg rstn;
    
    reg valid_in;
    reg [31:0] sample_in;
    
    wire valid_out;
    wire [31:0] sample_out;
    
    always #10 clk <= ~clk;
    integer i;
    
    initial
    begin
        clk <= 1'b0;
        rstn <= 1'b0;
        valid_in <= 1'b0;
        sample_in <= 32'b0;
        
        for (i = 0; i < 5; i++) @(posedge clk);
        rstn <= 1'b1;
        @(posedge clk) valid_in <= 1'b1;
        
        @(posedge clk) sample_in <= 32'hFFFF;
        @(posedge clk) sample_in <= 32'h0;
        
        for (i = 0; i < 2; i++) @(posedge clk);

        valid_in <= 0'b0;
        @(posedge clk) valid_in <= 1'b1;
    end
   
    SimpleFilter_v1_0 filter(.s00_axis_aclk(clk),
                             .s00_axis_aresetn(rstn),
                             .s00_axis_tvalid(valid_in),
                             .s00_axis_tdata(sample_in),
                             .m00_axis_aclk(clk),
                             .m00_axis_aresetn(rstn),
                             .m00_axis_tvalid(valid_out),
                             .m00_axis_tdata(sample_out));
    
    
endmodule

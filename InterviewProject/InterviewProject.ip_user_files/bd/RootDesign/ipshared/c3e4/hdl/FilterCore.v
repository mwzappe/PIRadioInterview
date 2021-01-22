`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 01/21/2021 01:08:10 PM
// Design Name: 
// Module Name: FilterCore
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
module FilterCore(
        input wire axis_rstn,
        input wire axis_aclk,
        input wire valid_in,
        input wire signed [31:0] sample_in,
        output wire valid_out,
        output wire signed [31:0] sample_out
    );

    function [31:0] runmult;
        input [31:0] sample;
        input integer n;
        begin
            runmult = (sample << (n+1)) - sample;
        end
    endfunction;        

    function [31:0] coeff0;
        input [31:0] sample;
        begin
            coeff0 = runmult(sample, 14);
        end
    endfunction
    
    function [31:0] coeff1;
        input [31:0] sample;
        reg [31:0] samp4_1;
        begin
            samp4_1 = runmult(sample, 4);
            coeff1 = (sample << 13) + (samp4_1 << 7) + (samp4_1 << 2) + sample;
        end
    endfunction

    function [31:0] coeff3;
        input [31:0] sample;
        begin
            coeff3 = (runmult(sample, 4) << 12) + (sample << 10) + (sample << 8) + (runmult(sample, 3) << 3);
        end
    endfunction

    function [31:0] coeff5;
        input [31:0] sample;
        begin
            coeff5 = (sample << 10) + (sample << 4) + (sample << 2) + sample;
        end
    endfunction

    function [31:0] coeff7;
        input [31:0] sample;
        begin
            coeff7 = (runmult(sample, 7) << 9) + (sample << 7) + (sample << 6) + (runmult(sample, 3) << 1);
        end
    endfunction
        
    reg [31:0] m0[0:14];    
    reg [31:0] m1[0:14];    
    reg [31:0] m3[0:14];    
    reg [31:0] m5[0:14];    
    reg [31:0] m7[0:14];    
    
    always @(posedge axis_aclk)
    begin
        m0[0] <= axis_rstn ? (valid_in ? coeff0(sample_in) : m0[0]) : 0;
        m1[0] <= axis_rstn ? (valid_in ? coeff1(sample_in) : m1[0]) : 0;
        m3[0] <= axis_rstn ? (valid_in ? coeff3(sample_in) : m3[0]) : 0;
        m5[0] <= axis_rstn ? (valid_in ? coeff5(sample_in) : m5[0]) : 0;
        m7[0] <= axis_rstn ? (valid_in ? coeff7(sample_in) : m7[0]) : 0;
    end
    
    genvar i;
    
    for (i = 1; i < 15; i = i + 1)
    begin
        always @(posedge axis_aclk) m0[i] <= axis_rstn ? (valid_in ? m0[i-1] : m0[i]) : 0;
        always @(posedge axis_aclk) m1[i] <= axis_rstn ? (valid_in ? m1[i-1] : m1[i]) : 0;
        always @(posedge axis_aclk) m3[i] <= axis_rstn ? (valid_in ? m3[i-1] : m3[i]) : 0;
        always @(posedge axis_aclk) m5[i] <= axis_rstn ? (valid_in ? m5[i-1] : m5[i]) : 0;
        always @(posedge axis_aclk) m7[i] <= axis_rstn ? (valid_in ? m7[i-1] : m7[i]) : 0;
    end

    reg valid_r;
    
    always @(posedge axis_aclk) valid_r <= valid_in;

    assign valid_out = valid_r;

    wire [31:0] filter_sum = m7[0] + m5[2] + m3[4] + m1[6] + m0[7] + m1[8] + m3[10] + m5[12] + m7[14];
    
    assign sample_out = { {16{filter_sum[31]}}, filter_sum[31:16] };    

endmodule

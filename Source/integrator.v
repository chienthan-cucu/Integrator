//### Project name: Integrator
//### Author: Phan Van Chien
//### File description: Integral block verilog source code with 22 bit resolution.


`timescale 1 ns / 1 ns

module Integrator
          (clk,
           reset,
           In,
           Out);


  input   clk;
  input   reset;
  input   signed [21:0] In;  // sfix22_En10
  output  signed [21:0] Out;  // sfix22_En20


  wire [10:0] Constant_out1;  // ufix11_En10
  wire signed [11:0] Product_cast;  // sfix12_En10
  wire signed [33:0] Product_mul_temp;  // sfix34_En20
  wire signed [32:0] Product_cast_1;  // sfix33_En20
  wire signed [20:0] Product_out1;  // sfix21_En20
  wire [10:0] Constant1_out1;  // ufix11_En10
  reg signed [21:0] Delay_out1;  // sfix22_En10
  wire [10:0] Constant2_out1;  // ufix11_En10
  wire signed [11:0] Product1_cast;  // sfix12_En10
  wire signed [33:0] Product1_mul_temp;  // sfix34_En20
  wire signed [32:0] Product1_cast_1;  // sfix33_En20
  wire signed [20:0] Product1_out1;  // sfix21_En20
  wire signed [31:0] Sum_add_cast;  // sfix32_En20
  wire signed [31:0] Sum_add_cast_1;  // sfix32_En20
  wire signed [31:0] Sum_add_temp;  // sfix32_En20
  wire signed [20:0] Sum_out1;  // sfix21_En20
  reg signed [21:0] Delay1_out1;  // sfix22_En10
  wire signed [11:0] Product2_cast;  // sfix12_En10
  wire signed [33:0] Product2_mul_temp;  // sfix34_En20
  wire signed [32:0] Product2_cast_1;  // sfix33_En20
  wire signed [20:0] Product2_out1;  // sfix21_En20
  wire signed [20:0] Sum2_out1;  // sfix21_En20
  wire signed [21:0] out_1;  // sfix22_En20
  reg signed [21:0] Delay2_reg [0:1];  // sfix22 [2]
  wire signed [21:0] Delay2_reg_next [0:1];  // sfix22_En20 [2]
  wire signed [21:0] Delay2_out1;  // sfix22_En20
  wire signed [31:0] Sum1_add_cast;  // sfix32_En20
  wire signed [31:0] Sum1_add_cast_1;  // sfix32_En20
  wire signed [31:0] Sum1_add_temp;  // sfix32_En20


  assign Constant_out1 = 11'b00101101111;



  assign Product_cast = {1'b0, Constant_out1};
  assign Product_mul_temp = Product_cast * In;
  assign Product_cast_1 = Product_mul_temp[32:0];
  assign Product_out1 = Product_cast_1[20:0];



  assign Constant1_out1 = 11'b10100100010;

  always @(posedge clk or posedge reset)
    begin : Delay_process
      if (reset == 1'b1) begin
        Delay_out1 <= 22'sb0000000000000000000000;
	Delay1_out1 <= 22'sb0000000000000000000000;
        Delay2_reg[0] <= 22'sb0000000000000000000000;
        Delay2_reg[1] <= 22'sb0000000000000000000000;
      end
      else begin
        Delay_out1 <= In;
        Delay1_out1 <= Delay_out1;
        Delay2_reg[0] <= Delay2_reg_next[0];
        Delay2_reg[1] <= Delay2_reg_next[1];
      end
    end



  assign Constant2_out1 = 11'b00101101111;



  assign Product1_cast = {1'b0, Constant1_out1};
  assign Product1_mul_temp = Product1_cast * Delay_out1;
  assign Product1_cast_1 = Product1_mul_temp[32:0];
  assign Product1_out1 = Product1_cast_1[20:0];



  assign Sum_add_cast = {{11{Product_out1[20]}}, Product_out1};
  assign Sum_add_cast_1 = {{11{Product1_out1[20]}}, Product1_out1};
  assign Sum_add_temp = Sum_add_cast + Sum_add_cast_1;
  assign Sum_out1 = Sum_add_temp[20:0];





  assign Product2_cast = {1'b0, Constant2_out1};
  assign Product2_mul_temp = Product2_cast * Delay1_out1;
  assign Product2_cast_1 = Product2_mul_temp[32:0];
  assign Product2_out1 = Product2_cast_1[20:0];



  assign Sum2_out1 = Sum_out1 + Product2_out1;




  assign Delay2_out1 = Delay2_reg[1];
  assign Delay2_reg_next[0] = out_1;
  assign Delay2_reg_next[1] = Delay2_reg[0];



  assign Sum1_add_cast = {{11{Sum2_out1[20]}}, Sum2_out1};
  assign Sum1_add_cast_1 = {{10{Delay2_out1[21]}}, Delay2_out1};
  assign Sum1_add_temp = Sum1_add_cast + Sum1_add_cast_1;
  assign out_1 = Sum1_add_temp[21:0];



  assign Out = out_1;


endmodule  // Integrator


`timescale 1ns / 1ps

module testbench;

reg     clk; 
reg     reset; 
reg     clk_enable; 
reg  [21:0]    In=22'b0;

wire  [21:0]    Out; 
wire  ce_out;
reg  [21:0]    mem[2409:0]; 
parameter clk_period = 10; 
integer i=0;
integer out_file;
real ps=1.0/1024/1024;

initial
begin
  $sdf_annotate("../Output/integrator.sdf", uut);
  out_file = $fopen ("result.txt");
  $readmemb("data.txt",mem);
  In=mem[0];
end
   
always 
begin : clk_process
   clk <= 1'b 0;   
   #( clk_period / 2 ); 
   clk <= 1'b 1;   
   #( clk_period / 2 ); 
end

always@(posedge clk) begin
    if (reset == 1'b1) begin
        i=0;
      end
    else begin
        if (clk_enable) begin
            i=i+1;
        end
    end    
    In <= mem[i];
end

always
begin : stim_proc
#10 reset=1;
    clk_enable=0;
#10 reset=0;
    clk_enable=1;
#24100 $finish;
end   
always@(posedge clk) begin
//    $fdisplay (out_file,"%f", $signed(Out)*ps);
      $fdisplay (out_file,"%f", uut.Delay_out1);
end

Integrator uut(clk, reset, clk_enable, In, ce_out, Out);


endmodule

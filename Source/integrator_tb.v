//### Project name: Integrator
//### Author: Phan Van Chien
//### File description: Integral block testbench
`timescale 1 ns / 1 ns

module testbench;

reg     clk; 
reg     reset; 
reg  [21:0]    In=22'b0;

wire  [21:0]    Out; 
reg  [21:0]    mem[2409:0]; 
parameter clk_period = 10; 
integer i=0;
integer out_file;
real ps=1.0/1024/1024;

initial
begin
//  $sdf_annotate("../Outputs/integrator.sdf", uut);
//  $sdf_annotate("../Outputs/integrator_min.sdf", uut);
//  $sdf_annotate("../Outputs/integrator_max.sdf", uut);
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

always@(negedge clk) begin
    if (reset == 1'b1) begin
        i=0;
      end
    else begin
            i=i+1;
    end    
    In <= mem[i];
end

always
begin : stim_proc
#10 reset=1;
#10 reset=0;
#24100 $finish;
end   
always@(posedge clk) begin
    $fdisplay (out_file,"%f", $signed(Out)*ps);
//    $fdisplayb (out_file, uut.Out);
end

Integrator uut(clk, reset,  In, Out);


endmodule

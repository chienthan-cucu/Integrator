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
reg  [21:0]    mem2[2409:0];
parameter clk_period = 50; 

integer i=0;
integer out_file;
reg [21:0] out_t=22'b0;
reg [21:0] Diff = 22'b0;

initial
begin
  $sdf_annotate("../Outputs/integrator.sdf", uut);
  $readmemb("data.txt",mem);
  $readmemb("result.txt",mem2);


end
   
always 
begin : clk_process
   clk <= 1'b 0;   
   #( clk_period / 2 ); 
   clk <= 1'b 1;   
   #( clk_period / 2 ); 
end

always@(negedge clk, posedge reset) begin
    if (reset == 1'b1) begin
        i=0;
      end
    else begin
            i=i+1;
    end    
    In <= mem[i];
    out_t<=mem2[i];
end

always @(posedge clk)
begin
	if (reset)
		Diff <= 22'd0;
	else begin
		Diff <= out_t - Out;
	end
end

always
begin : stim_proc
#10 reset=1;
#10 reset=0;
#100000 $finish;
end   



Integrator uut(clk, reset,  In, Out);


endmodule

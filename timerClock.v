module timeClock (
input clk,
output reg clk_out);

  reg[27:0] period_count=0;

always @(posedge clk) //1Hz Clock
  if (period_count != 100,000,000 -1) //100Mhz
  begin 
  period_count <= period count +1;
    clk_out <=0;
    end 
   
  else 
      begin 
      period_count < = 0;
      clk_out <1;
 end 
 endmodule 

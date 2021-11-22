module timerCount(
input clk,
input reset,
  output [4:0] count //30 second timer 
);
  wire clk_out;
  timerClock UTC(clk, clk_out);
  
  reg[4:0] current_count=30;
  always @ (posedge clk_out) begin
    if(reset)
      current_count<=30;
    else if(current_count ==0)
      current_count<=current_count;
    else if(current_count) >=1)
      current_count<=current_count -1;
    else
      current_count <= current_count;
  end 
      assign count=current_count;
endmodule

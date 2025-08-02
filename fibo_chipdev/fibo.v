/* # Prompt
Design a circuit which generates the Fibonacci sequence starting with 1 and 1 as the first two numbers.

The Fibonacci sequence is a sequence of numbers where each number is the sum of the two previous numbers. More formally this can be expressed as:

F0 = 1
F1 = 1
Fn = Fn-1 + Fn-2 for n > 1.

Following the definition of the Fibonacci sequence above we can see that the sequence is 1, 1, 2, 3, 5, 8, 13, etc.

The sequence should be produced when the active low signal (resetn) becomes active. In other words, the sequence should restart from 1 followed by another 1 (the Fibonacci sequence's initial condition) as soon as resetn becomes active.

Input and Output Signals
clk - Clock signal
resetn - Synchronous reset-low signal
out - Current Fibonacci number
Output signals during reset
out - 1 when resetn is active (the first 1 of the Fibonacci sequence)
*/
module model #(parameter
  DATA_WIDTH=32
) (
  input clk,
  input resetn,
  output logic [DATA_WIDTH-1:0] out
);
reg [DATA_WIDTH-1:0 ] temp1 = 1 ;
reg [DATA_WIDTH-1:0] temp2 = 0 ;
always @(posedge clk ) begin 
  if  (!resetn) begin

    temp1 <= 0;
    temp2 <= 1;
    out   <= 1;
    

  end 
  else begin 
  temp1 <= temp2;
  temp2 <= temp1 + temp2;  
    out   <= temp1 + temp2; 
  
  
end 
end 
endmodule

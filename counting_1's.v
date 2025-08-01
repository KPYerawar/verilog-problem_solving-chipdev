/*Prompt
Given an input binary value, output the number of bits that are equal to 1.

Input and Output Signals
din - Input value
dout - Number of 1's in the input value
*/
module model #(parameter
  DATA_WIDTH = 16
) (
  input [DATA_WIDTH-1:0] din,
  output logic [$clog2(DATA_WIDTH):0] dout
);
reg [$clog2(DATA_WIDTH+1)-1:0]count ;
integer  i ;
always @(*)begin
  count = 0 ;
for (i = 0; i < DATA_WIDTH; i = i + 1)
begin 
  if ( din[i ] == 1 )
  count = count + 1 ;
end 
dout = count ;

end
endmodule

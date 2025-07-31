// # Prompt
//Reverse the bits of an input value's binary representation.

//  Input and Output Signals
// din - Input value
// dout - Bitwise reversed value

module model #(parameter
  DATA_WIDTH=32
) (
  input  [DATA_WIDTH-1:0] din,
  output logic [DATA_WIDTH-1:0] dout
);
reg [31:0] a ;
reg [31:0] temp;
 always @(*) begin 
   a = 0 ;
   for (int i =  DATA_WIDTH-1; i >= 0  ; i = i - 1 ) begin
     temp[a] = din[i];
     a = a +1;
   end
 end
   assign dout = temp;

endmodule

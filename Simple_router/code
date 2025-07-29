module model #(parameter
  DATA_WIDTH = 32
) (
  input  [DATA_WIDTH-1:0] din,
  input  din_en,
  input  [1:0] addr,
  output logic [DATA_WIDTH-1:0] dout0,
  output logic [DATA_WIDTH-1:0] dout1,
  output logic [DATA_WIDTH-1:0] dout2,
  output logic [DATA_WIDTH-1:0] dout3
);
always @(*) begin
  dout0 = 32'h0;
  dout1 = 32'h0;
  dout2 = 32'h0;
  dout3 = 32'h0;
if(din_en )
case(addr)
 2'b00:  dout0 = din;
   2'b01:  dout1 = din;
 2'b10:  dout2 = din;
 2'b11:  dout3 = din;

endcase
end
endmodule

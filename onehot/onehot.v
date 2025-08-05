module model #(parameter
  DATA_WIDTH = 32
) (
  input  [DATA_WIDTH-1:0] din,
  output logic onehot
);
  int count;
always @(*) begin 
  count = 0 ;
  for (int i = 0 ; i < DATA_WIDTH ; i = i + 1)begin
    if ( din[i] == 1'b1 )
    count = count + 1 ;
    
  end
  if ( count == 1 )
  onehot = 1 ;
else
  onehot = 0 ;

end

endmodule

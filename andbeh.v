module and_2_beh(input  wire A, input  wire B, output reg  Y);

  always @ (A,B)
    begin
      if (A==1'b1 && B==1'b1)
    Y = 1'b1;
  else
    Y = 1'b0;
    end

endmodule
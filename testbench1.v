// Code your testbench here
// or browse Examples
module and_2_beh(input  wire A, input  wire B, output reg  Y);

  always @ (A,B)
    begin
     Y=A&&B;
    end

endmodule
module test; 
reg  a; 
reg  b;
wire y;


and_2_beh beh1 (a,b,y);// instead of this put the structural or dataflow module while doing each
initial
begin  

$dumpfile("dump.vcd"); 
$dumpvars(1);   
#00 b = 1'b0;  a = 1'b0;  
#10 b = 1'b0;  a = 1'b1; 
 #10 b = 1'b1;  a = 1'b0;  
#10 b = 1'b1;  a = 1'b1;   
#10; 
 $stop; 
 $finish;
end
endmodule

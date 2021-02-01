module halfbeh (
    input A,input B,output S,output Cout
);
reg S,Cout;
always @(A,B)
 begin
     if(A==B)
     S=0;
     else
     S=1;
     if(A&&B)
     Cout=1;
     else
     Cout=0;
 end
    
endmodule
module half_tb;
 reg a,b;
 wire s,cout;
 halfbeh hf(a,b,s,cout);

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
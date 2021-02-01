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
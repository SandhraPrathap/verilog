module halfstr (input A,input B,output S,output Cout);
   xor x1(S,A,B); 
   and a1(C out,A,B);
endmodule
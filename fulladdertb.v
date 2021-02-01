module halfadder(input A ,input B,output S,output Cout);
 assign S=A^B;
 assign Cout=A&B;
endmodule
module fulladder(input A,input B,output S,output Cout); 
 halfadder hf1 (a,b,s,cout);
 halfadder hf2 (a,b,s,cin);
endmodule
module fulladder_tb;
endmodule
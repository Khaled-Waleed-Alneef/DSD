module full_adder(input ci,input x,input y,output s,output co);


wire c1,s1,c2;

half_adder ha1(x,y,s1,c1);
half_adder ha2(s1,ci,s,c2);
or or1(co,c1,c2);

endmodule


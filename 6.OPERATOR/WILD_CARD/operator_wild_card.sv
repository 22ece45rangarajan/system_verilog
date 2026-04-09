module operator_wildcard();
  
  logic [6:0] R;
  logic [6:0] P;
  logic [6:0] K;
  logic [6:0] M;
  logic [6:0] r;
  logic [6:0] k;
  logic [6:0] p; 
  
  initial begin
   
    R=7'b10101xx;P=7'b0101100;K=7'bxxxxxxx;M=7'b1010101;
    
    $display("-----_WILDCARD_OP_-----");
    
    if(M==?R)
      $display("orey : watashi wa kaarru san ga suki desuuu,anata wa do desu ka?");
    else
      $display("naan demo naai.....");
    
    if(R=?=M)
      $display("kaaru san:watashi mo anata no koto daisuki desu ");
    else
      $display("nandey?");
    
    if(M==?R)
      $display("orey :ja asitha iko ka....");
    else
      $display("sumimasen deshitha");
    
    if(K!=?M)
      $display("kaaru san: hai orey wa matte imasu");
    else
      $display("mata neyyyy...");
    
    $display("-----------------------");
  end
endmodule
    
    							

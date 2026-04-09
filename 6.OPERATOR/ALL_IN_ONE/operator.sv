// Code your testbench here
// or browse Examples
module operator();
  
  logic [6:0] R;
  logic [6:0] P;
  logic [6:0] K;
  logic [6:0] M;
  logic [6:0] r;
  logic [6:0] k;
  logic [6:0] p; 
  
  initial begin
    
    R=45;
    P=44;
    K=96;
    M=69;
    
    $display("-----_ARITHMETIC_OP_-----");
    
    $display("R+P = %d \n K-M = %d \n R*P = %d \n K/M =%d \n K%M = %d \n P**2 = %d",R+P,K-M,R*P,K/M,K % M,P**2);
    
    $display("-----_RELATIONAL_OP_-----");
     
    r=45;k=44;
    if(R==r)
      $display("orey : watashi wa kaarru san ga suki desuuu,anata wa do desu ka?");
    else
      $display("naan demo naai.....");
    
    if(P==k)
      $display("kaaru san:watashi mo anata no koto daisuki desu ");
    else
      $display("nandey?");
    
    if(R<=M)
      $display("orey :ja asitha iko ka....");
    else
      $display("sumimasen deshitha");
    
    if(K>=M)
      $display("kaaru san: hai orey wa matte imasu");
    else
      $display("mata neyyyy...");
    
    $display("-----_EQUALITY_OP_-----");
     k=6'b1010xx;r=6'b1010zx;p=6'b101010;
    
    if(k===r)
      $display("ichigo:omaye darey da?...");
    else
      $display("ichigo:zangetsu no ossan wa doko da?");
    
    if(k!==r)
      $display("wihte:orey zangetsu da...");
    else
      $display("white:naniii?");
    
    if(R==r)
      $display("yuwach:ichigo orey aamey ga kirai da...");
    else
      $display("yuwach:sa tatakao ka wagano muskotachi?");
    
    if(R!=r)
      $display("Bankai: Katen Kyokotsu Karamatsu Shinju");
    else
      $display("Bankai:Zanka no Tachi");
    
    $display("-----_CONC_&_REPLICATION_OP_-----");
    
    $display("conc=%d \n rep=%dd",{R,P},{2{P}});
    
  end
endmodule
    
    							

module state_4_variable();
  bit   [3:0]  l_value;
  byte         k_value;
  int          l1_value;
  shortint     l2_value;
  longint      l3_value;
  longint      w_value;
 
  initial begin
    
    $display("=================\n size_of_value \n==================");
    
    $display("the size of bit        = %0d",$size(l_value));
    $display("the size of byte       = %0d",$size(k_value));
    $display("the size of int        = %0d",$size(l1_value));
    $display("the size of shortint   = %0d",$size(l2_value));
    $display("the size of longint    = %0d",$size(l3_value));
      
    #1;
    $display("===============\n before_initialization \n================");
    
    $display("the ini_val of bit        = %0d",l_value);
    $display("the ini_val of byte       = %0d",k_value);
    $display("the ini_val of int        = %0d",l1_value);
    $display("the ini_val of shortint   = %0d",l2_value);
    $display("the ini_val of longint    = %0d",l3_value);
    
    #1;
    l_value    = 4'b1010;
    k_value    = 4'hf;
    l1_value   = 07;
    l2_value   = 15;
    l3_value   = 60;
    w_value    = l2_value+l3_value;
    
    
    $display("===============\n after_initialization \n================");
    
    
    $display("the af_ini_value of bit       = %0d",l_value);
    $display("the af_ini_value of byte      = %0d",k_value);
    $display("the af_ini_value of int       = %0d",l1_value);
    $display("the af_ini_value of shortint  = %0d",l2_value);
    $display("the af_ini_value of longint   = %0d",l3_value);
    $display("the af_ini_value of longint   = %0d",w_value);
    
  end
 
endmodule
    
    

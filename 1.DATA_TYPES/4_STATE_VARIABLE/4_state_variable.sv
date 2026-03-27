module state_4_variable();
  reg   [3:0]  m_value;
  wire  [3:0]  k_value;
  logic [3:0]  l_value;
  real         l1_value;
  real         l2_value;
  real         add_value;
  integer      i_value;
 
  initial begin
    
    $display("=================\n size_of_value \n==================");
    
    $display("the size of reg        = %0d",$size(m_value));
    $display("the size of wire       = %0d",$size(k_value));
    $display("the size of logic      = %0d",$size(l_value));
    $display("the size of real_1     = %f",$size(l1_value));
    $display("the size of real_2     = %f",$size(l2_value));
    $display("the size of add_value  = %f",$size(add_value));
    $display("the size of integer    = %0d",$size(i_value));
      
    #1;
    $display("===============\n before_initialization \n================");
    
    $display("the ini_val of reg        = %0d",m_value);
    $display("the ini_val of wire       = %0d",k_value);
    $display("the ini_val of logic      = %0d",l_value);
    $display("the ini_val of real_1     = %0f",l1_value);
    $display("the ini_val of real_2     = %0f",l2_value);
    $display("the ini_val of add_value  = %0f",add_value);
    $display("the ini_val of integer    = %0d",i_value);
    
    #1;
    m_value    = 4'b1111;
    l_value    = 4'hf;
    l1_value   = 5.555;
    l2_value   = 5.555;
    i_value    = 28;
    add_value  =l1_value+l2_value;
    
    
    $display("===============\n after_initialization \n================");
    
    
    $display("the af_ini_value of reg       = %0d",m_value);
    $display("the af_ini_value of wire      = %0d",k_value);
    $display("the af_ini_value of logic     = %0d",l_value);
    $display("the af_ini_value of real_1    = %0f",l1_value);
    $display("the af_ini_value of real_2    = %0f",l2_value);
    $display("the af_ini_value of add_value = %0f",add_value);
    $display("the af_ini_value of integer   = %0d",i_value);
    
  end
 
endmodule
    
    

module casting();
  
  bit     [1:0] bit_data;
  byte          byte_data;
  logic   [1:0] logic_data;
  integer       integer_data;
  int           int_data;
  shortint      shortint_data;
  longint       longint_data;
  real          real_data;
  
  assign logic_data=2'b11;
  initial begin 
 
    $display("---------initial_value---------");    

    bit_data=2'd2;byte_data=11;integer_data=44;int_data=45;shortint_data=414;longint_data=415;real_data=4.4;
    $display("%b %b %b %b %b %b %b %b",bit_data,byte_data,logic_data,integer_data,int_data,shortint_data,longint_data,real_data);
    
    $display("---------all_to_bit---------"); 
    
    bit_data = bit'(byte_data);
    $display("%b",bit_data);
    
    bit_data = bit'(logic_data);
    $display("%b",bit_data);
    
    bit_data = bit'(integer_data);
    $display("%b",bit_data);
    
    bit_data = bit'(int_data);
    $display("%b",bit_data);
    
    bit_data = bit'(shortint_data);
    $display("%b",bit_data);
    
    bit_data = bit'(longint_data);
    $display("%b",bit_data);
    
    bit_data = bit'(real_data);
    $display("%b",bit_data);
    
    $display("---------all_to_byte---------"); 
    
    byte_data = byte'(bit_data);
    $display("%b",byte_data);
    
    byte_data = byte'(logic_data);
    $display("%b",byte_data);
    
    byte_data = byte'(integer_data);
    $display("%b",byte_data);
    
    byte_data = byte'(int_data);
    $display("%b",byte_data);
    
    byte_data = byte'(shortint_data);
    $display("%b",byte_data);
    
    byte_data = byte'(longint_data);
    $display("%b",byte_data);
    
    byte_data = byte'(real_data);
    $display("%b",byte_data);
    
    $display("---------all_to_integer---------"); 
    
    integer_data = integer'(bit_data);
    $display("%b",integer_data);
    
    integer_data = integer'(byte_data);
    $display("%b",integer_data);
    
    integer_data = integer'(logic_data);
    $display("%b",integer_data);
    
    integer_data = integer'(int_data);
    $display("%b",integer_data);
    
    integer_data = integer'(shortint_data);
    $display("%b",integer_data);
    
    integer_data = integer'(longint_data);
    $display("%b",integer_data);
    
    integer_data = integer'(real_data);
    $display("%b",integer_data);
    
    
    $display("---------------------------"); 
    
  end
endmodule
    
    
    
    
    

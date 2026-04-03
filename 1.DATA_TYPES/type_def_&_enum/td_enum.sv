module enum_typedef();
  
  typedef enum{vanddiii,orey,zangetsu,kurama}names;
  int i,j;
  names name_var;
  
  initial begin
    
    $display("============\n number_of_element \n=============");
    
    $display("%0d ",name_var.num());
    
    $display("============\n list_of_element \n=============");
    
    for(name_var=name_var.first();name_var <=name_var.last();name_var=name_var.next())begin
      $display("%s",name_var.name());
    end
    
  end
endmodule


//______output____



============
 number_of_element 
=============
4 
============
 list_of_element 
=============
vanddiii
orey
zangetsu
kurama

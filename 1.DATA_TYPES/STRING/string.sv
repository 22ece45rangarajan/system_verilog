module str_ing();
  
  string  str_ing_1 ;
  string  str_ing_2 ;
  string  str_ing_3 ;
  byte    temp_ing_1;
  byte    temp_ing_2;
  integer i         ;
  
  initial begin 
    
    str_ing_1 = "OHAYO";
    str_ing_2 = "BOKEY";
    str_ing_3 = "CHANN";
    
    $display("=================\n length_of_value \n==================");
    
    $display("the length  of string_1 = %0d",str_ing_1.len());
    $display("the length  of string_2 = %0d",str_ing_2.len());
    $display("the length  of string_2 = %0d",str_ing_3.len());
    
    #2;
    $display("=================\n comparing_value \n==================");
    
    if(str_ing_1 == str_ing_2)
      $display("yugata dayo,taku!");
    else if(str_ing_1 != str_ing_2)
      $display("ohayo gozaimasu");
    else 
      $display("omayae darey?");
    
    #2;
    
    $display("=================\n case_changing \n==================");
    
    $display("%s %s %s",str_ing_1.tolower(),str_ing_2.toupper(),str_ing_3.tolower());
    
    #2;
    
    $display("=================\n get_&_put \n==================");
    
    temp_ing_1 = str_ing_1.getc(0);
    temp_ing_2 = str_ing_1.getc(1);
    $display("%s \n %s \n",temp_ing_1,temp_ing_2);
    
    
    str_ing_1.putc(5,"o");
    str_ing_3.putc(3,"A");
    $display("%s %s %s",str_ing_1,str_ing_2,str_ing_3);
    
    #2;

    $display("=================\n compare_and_icompare \n==================");    
    
    
    $display("%d %d %d",str_ing_1.compare(str_ing_2),str_ing_2.compare(str_ing_2),str_ing_2.icompare(str_ing_3));
    
    #2;
    
    $display("=================\n substring \n==================");
    
    $display("%s %s %s",str_ing_1.substr(0,1),str_ing_2.substr(2,4),str_ing_3.substr(1,4));
    
    #2;
    
    $display("=================\n replication_&_duplication \n==================");
    
    $display("%s",{2{str_ing_1}});
    $display("%s",{{str_ing_1 },{str_ing_2 },{str_ing_3 }});
    
    #2;
    
    $display("=================\n indexing \n==================");
    
    for(i=0;i<5;i++)begin
      $display("%s",str_ing_1[i]);
    end
    
  end
endmodule


//output
=================
 length_of_value 
==================
the length  of string_1 = 5
the length  of string_2 = 5
the length  of string_2 = 5

=================
 comparing_value 
==================
ohayo gozaimasu


=================
 case_changing 
==================
ohayo BOKEY chann

=================
 get_&_put 
==================
O 
H 

    str_ing_1.putc(5,"o");
                 |
xmsim: *W,RTSSTD (./testbench.sv,47|17): SystemVerilog string index 5 does not exist, 5 characters are in string.
OHAYO BOKEY CHAAN
=================
 compare_and_icompare 
==================
          1           0          -1

=================
 substring 
==================
OH KEY HAAN


=================
 replication_&_duplication 
==================
OHAYOOHAYO
OHAYOBOKEYCHAAN


=================
 indexing 
==================
O
H
A
Y
O


















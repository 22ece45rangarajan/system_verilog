module queue_bounded;
  int data[$:10];
  int val;
  initial begin
    data = '{44, 45, 145, 1444, 444, 445, 4444, 440, 441, 442};  
    $display("----_Original_Bounded_Queue_----:");
    foreach (data[i])
      $display("%0d:%0d",i,data[i]);

    data[2] = 146;
    data[5] = 446;
    data[7] = 441;

    $display("----_Modified_Bounded_Queue_----:");
    foreach (data[i])
      $display("%0d:%0d",i,data[i]);
    
    data.push_back(414);
    data.push_back(415);
    $display("%p",data);

    $display("Bounded Queue Size: %0d", $size(data));
  end
endmodule

//---_output_---//
----_Original_Bounded_Queue_----:
0:44
1:45
2:145
3:1444
4:444
5:445
6:4444
7:440
8:441
9:442
----_Modified_Bounded_Queue_----:
0:44
1:45
2:146
3:1444
4:444
5:446
6:4444
7:441
8:441
9:442

Warning-[DT-OOBBQ] Out of bound addition in bounded queue
testbench.sv, 19
  Addition of new element beyond the upper bound (11) of the queue shall be 
  ignored.
  Please make sure that the queue is not full or the index is within the 
  bounds of the queue.

'{44, 45, 146, 1444, 444, 446, 4444, 441, 441, 442, 414} 
Bounded Queue Size: 11

           V C S   S i m u l a t i o n   R e p o r t 



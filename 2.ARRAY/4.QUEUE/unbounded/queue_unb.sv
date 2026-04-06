module queue;
  int data[$];
  int value;
  initial begin
    data.push_back(44);
    data.push_back(45);
    data.push_back(145);
    data.push_back(1444);
    data.push_back(444);
    data.push_back(445);
    data.push_back(4444);
    data.push_back(440);
    data.push_back(441);
    data.push_back(442);

    $display("----_Original_Queue_----:");
    foreach (data[i])
      $display("%0d:%0d",i,data[i]);

    data[3] = 146;
    data[5] = 446;
    data[7] = 441;

    $display("----_Modified_Queue_----:");
    foreach (data[i])
      $display("%0d:%0d",i,data[i]);
    
    $display("----_using_keys_----:");
    
    value = data.pop_front();
    $display("Pop Front: %0d", value);

    value = data.pop_back();
    $display("Pop Back: %0d", value);

    $display("----_Final_Queue_----:");
    foreach (data[i])
      $display("%0d:%0d",i,data[i]);

    $display("----_size_of_Queue_----:");
    
    $display("Queue Size: %0d", data.size());
  end
endmodule

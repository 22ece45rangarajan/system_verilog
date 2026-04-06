module unpacked_array;
  int data[10];
  initial begin
    data[0] = 44;
    data[1] = 45;
    data[2] = 144;
    data[3] = 244;
    data[4] = 50;
    data[5] = 60;
    data[6] = 70;
    data[7] = 80;
    data[8] = 90;
    data[9] = 100;

    $display("----_Original_Array_----:");
    foreach (data[i])
      $display("%0d", data[i]);

    data[2] = 101;
    data[5] = 66;
    data[7] = 88;

    $display("----_Modified_Array_----:");
    foreach (data[i])
      $display("%0d", data[i]);

    $display("Array Size: %0d", data.size());
  end
endmodule

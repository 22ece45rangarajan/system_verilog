module associative_array;
  int data[string];
  string k;
  initial begin
    data["a"] = 44;
    data["b"] = 45;
    data["c"] = 145;
    data["d"] = 1444;
    data["e"] = 444;
    data["f"] = 445;
    data["g"] = 4444;
    data["h"] = 440;
    data["i"] = 441;
    data["j"] = 442;

    $display("----_Origina_Array_----:");
    foreach (data[k])
      $display("%s: %0d", k, data[k]);

    data["c"] = 146;
    data["f"] = 446;
    data["h"] = 441;

    $display("----_Modified_Array_----:");
    foreach (data[k])
      $display("%s: %0d", k, data[k]);
  end
endmodule

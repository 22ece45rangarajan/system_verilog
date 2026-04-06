module packed_array_example;
  bit [3:0][7:0] data;
  bit [31:0] full_data;
  initial begin
    data = '{8'd44, 8'd45, 8'd144, 8'd244};
    $display("------_original_data_-------");
    full_data = data;
    $display("_%d__", full_data);

    foreach (data[i])
      $display("%0d", data[i]);
    
    $display("------_data_display-------");

    $display("%0d", data[0]);
    $display("%0d", data[1]);
    $display("%0d", data[2]);

    $display("------_modified_data_-------");

    data[2] = 8'd100;
    data[0] = data[1];

    foreach (data[i])
      $display("%0d", data[i]);

    full_data = data;
    $display("%0d", full_data);

    $display("%0d", $bits(data));
  end
endmodule

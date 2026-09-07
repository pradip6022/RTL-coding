// Code your testbench here
// or browse Examples
module mux_tb();

logic [7:0] data_in_a;
logic[7:0] data_in_b;
logic sel;
logic [7:0]data_out;
  mux dut(.data_in_a(data_in_a),.data_in_b(data_in_b),.sel(sel),.data_out(data_out));

initial begin
    for(int i=0;i<10;i=i+1)begin
        data_in_a=$urandom_range(0,8'hFF);
        data_in_b=$urandom_range(0,8'hFF);
        sel=$random%2;
      #5;
      $display("data_in_a:%h",data_in_a);
      $display("data_in_b:%h",data_in_b);
      $display("sel:%b",sel);
      $display("data_out:%h",data_out);
      $display("-------------------");
      
        #5;
    end
end

initial begin
    $dumpfile("mux.vcd");
 // $dumpvarse(0,mux_tb);
end
endmodule
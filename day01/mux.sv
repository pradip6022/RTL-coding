module mux(
    input logic [7:0]data_in_a,
    input logic [7:0]data_in_b,
    input logic sel,
    output logic [7:0]data_out
);

assign data_out=(sel)?data_in_a:data_in_b;
endmodule
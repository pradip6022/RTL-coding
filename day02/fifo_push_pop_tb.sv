interface my_if(input bit clk);
    logic pop;
    logic push;
    logic full;
    logic empty;
endinterface

module tb();
bit clk;
always #5 clk<=~clk;
mif u0(.*);

initial begin
    for(int i=0;i<10;i=i+1)begin
        mif.push<=$random;
        mif.pull<=$random;
        mif.full<=$random;
        mif.empty<=$random;

        #1 $strobe("[%0t], push: %b pull: %b full:%b empty: %b",$time,mif.push,mif.pull,mif.full,mif.empty);
        $display("-------------------------------");
    end
end
#50
$finish;

endmodule 
module fifo_push_pop(my_if mif);

    always @(posedge mif.clk)begin
        if(mif.push)begin
            mif_push:assert(!mif.full)begin
                $display("True..the fifo can be pushed.");
            end
            else begin
                $display("False ..the fifo can't be pushed anymore..");
            end
        end

        if(mif.pop)begin
            mif_pop :assert(!mif.empty)begin
                $display("True ..fifo is ready for pop action");
            end
            else begin
                $display("False ..fifo is empty");
            end
        end
    end

endmodule 
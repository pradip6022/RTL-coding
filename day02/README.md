### FIFO Push/Pop Control Check via Immediate Assertions

* **Design Concept:** Evaluates FIFO control integrity using clocked immediate assertions (`assert`) passed through a SystemVerilog `interface`.
* **Assertion Rules:**
  * **Push Safety:** Checks `assert(!mif.full)` when `push` is asserted to prevent FIFO overflow.
  * **Pop Safety:** Checks `assert(!mif.empty)` when `pop` is asserted to prevent FIFO underflow.
* **Verification:** Driven by randomized control pulses (`$random`) in a loop, verified with synchronous sampling on `posedge clk`.
* **Key Takeaway:** Demonstrates how immediate assertions flag invalid FIFO operations without waiting for formal property evaluation blocks.
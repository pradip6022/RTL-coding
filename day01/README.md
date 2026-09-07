
# RTL-coding

### Day 01: 2-to-1 Multiplexer (Combinational)

* **Design:** 8-bit 2-to-1 parameterizable multiplexer implemented using continuous assignment (`assign`).
* **Verification:** Directed and constrained-random testbench in SystemVerilog using `$urandom_range` with waveform dumping (`.vcd`).
* **Key Learning:** Solved delta-cycle simulation race conditions by inserting proper timing delays before sampling combinational outputs to avoid printing uninitialized (`xx`) or stale values.
* **Tools:** Synopsys VCS / SystemVerilog.

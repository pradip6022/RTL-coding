# Sequence Concatenation in SystemVerilog Assertions

## Overview
Demonstrates nested sequence concatenation using the cycle delay operator (`##1`) across clock cycles.

## Sequence & Property Definition
* **`s_ab`**: `a ##1 b`
* **`s_cd`**: `c ##2 d`
* **`p_expr`**: `@(posedge clk) s_ab ##1 s_cd`

### Target Timing Sequence
The concatenated property checks for the following relative timeline:
* **Cycle 0:** `a == 1`
* **Cycle 1:** `b == 1`
* **Cycle 2:** `c == 1`
* **Cycle 4:** `d == 1`

## Key Takeaway
Because `p_expr` lacks an implication operator (`|->` or `|=>`), the assertion unconditionally triggers at **every single clock edge**, expecting `a` to be high immediately. If `a == 0` at any sample edge, it registers an assertion failure (`Offending 'a'`).
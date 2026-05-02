# ICCAD Contest Problem A Testcases

This directory contains testcases for the ICCAD Contest Problem A - LLM-Assisted Netlist Exploration and Transformation.

## Testcase Structure

Each testcase is organized as follows:
- `testcases/<testcase_name>/<testcase_name>.in`: Natural-language requests for the testcase.
- `testcases/<testcase_name>/design/netlist/<testcase_name>.v`: Input gate-level Verilog netlist.

## Testcase Summaries

### test1: Basic Analysis and Transformation
- **Focus**: Loading design, logic depth analysis, path traversal analysis, and gate replacement.
- **Tasks**:
    - Load design.
    - Logic depth calculation from a primary input to an output.
    - Path analysis involving flip-flops.
    - Replacement of NAND gates with AND+NOT logic.
    - Write out design.

### test2: Fanout Analysis and Buffering
- **Focus**: High-fanout identification, buffer insertion for fanout constraints, and functional verification.
- **Tasks**:
    - Load design.
    - Identify high-fanout signals (fanout > 5).
    - Insert buffer stages to limit fanout to 4.
    - Verify functional equivalence of the modified design.
    - Write out design.

### test3: Netlist Optimization
- **Focus**: Dead-code (dangling gate) removal and simple logic optimization.
- **Tasks**:
    - Load design.
    - Remove dangling gates and nets that don't affect primary outputs.
    - Optimize redundant inverter-buffer chains.
    - Write out design.

#  Design Specifications – FPGA 24-Hour Digital Clock

---

##  Design Objective

The objective of this project is to design and implement a 24-hour digital clock on an Artix-7 FPGA using Verilog HDL.

The clock must:

- Accept a 100 MHz input clock
- Generate a 1 Hz timing pulse
- Maintain time in 24-hour format
- Reset correctly after 23:59:59
- Be fully synthesizable
- Meet FPGA timing constraints

---

##  System Architecture

The system consists of the following modules:

###  Clock Divider
- Converts 100 MHz board clock to 1 Hz
- Implemented using a 27-bit counter
- Operates synchronously with system clock

###  Seconds Counter
- Counts from 0 to 59
- Generates `tick` signal on rollover

###  Minutes Counter
- Triggered by `tick`
- Counts from 0 to 59
- Generates `min_tick` on rollover

###  Hours Counter
- Triggered by `min_tick`
- Counts from 0 to 23
- Resets to 0 after 23

---

##  Clock Division Theory

Given:

Board Clock = 100 MHz

To generate 1 Hz:

Division factor = 100,000,000

A counter increments every clock cycle and toggles output after reaching the division value.

This produces a precise 1-second timing pulse.

---

##  Synchronous Design Principles

- All counters are positive-edge triggered.
- No asynchronous combinational loops.
- All rollover signals are generated synchronously.
- Reset is handled inside sequential always blocks.

This ensures predictable FPGA timing behavior.

---

##  FPGA Implementation Details

### Device Used
- Artix-7 (xc7a100tcsg324-1)

### Toolchain
- Vivado 2025.1

### Design Flow
1. RTL Coding
2. Constraint Definition (XDC)
3. Synthesis
4. Implementation
5. Timing Analysis
6. Bitstream Generation
7. Hardware Programming
8. ILA Verification

---

##  Resource Utilization

- Slice LUTs: 18
- Slice Registers: 46
- DSP Blocks: 0
- BRAM: 0

The design is lightweight and resource-efficient.

---

##  Timing Analysis

- Worst Negative Slack (WNS): Positive
- No Setup Violations
- No Hold Violations
- All constraints met successfully

---

##  Hardware Debugging

ILA was configured to monitor:

- seconds[5:0]
- minutes[5:0]
- hours[4:0]

Verified rollover conditions:

- 59 → 00 (seconds)
- 59 → 00 (minutes)
- 23 → 00 (hours)

Waveforms confirmed correct functionality.

---

##  Future Improvements

- Add 7-segment display output
- Add alarm functionality
- Implement PLL-based clock divider
- Add push-button reset debouncing

---

##  Conclusion

The project successfully demonstrates:

- Modular FPGA design
- Clock management
- Timing-aware implementation
- On-chip debugging
- Complete RTL-to-hardware workflow


#  FPGA-Based 24-Hour Digital Clock (Artix-7)

##  Introduction

 Lab workshop on FPGA Architecture and Programming using Verilog HDL by NIELIT Calicut in association with ARM and NPTEL.

This project implements a fully synthesizable **24-hour digital clock** using Verilog HDL and deploys it on a **Xilinx Artix-7 FPGA (xc7a100t)**.

The design follows a modular synchronous architecture consisting of seconds, minutes, and hours counters. The system converts the 100 MHz onboard clock into a 1 Hz timing signal and maintains time in 24-hour format (00:00:00 → 23:59:59).

The complete FPGA design flow was performed using Xilinx Vivado, including synthesis, implementation, timing analysis, bitstream generation, and hardware validation using Integrated Logic Analyzer (ILA).

---

##  Features

- 24-hour time format (00–23 hours)
- Modular counter architecture
- 100 MHz to 1 Hz clock division
- Proper synchronous rollover logic
- On-chip debugging using ILA
- Successfully implemented on Artix-7 FPGA

---

## Tools Used

- Verilog HDL
- Xilinx Vivado
- Artix-7 FPGA (xc7a100t)
- Xilinx Integrated Logic Analyzer (ILA)

---

##  Hardware Verification

The internal signals (seconds, minutes, hours) were monitored using ILA to verify:

- Seconds rollover: 59 → 00  
- Minutes rollover: 59 → 00  
- Hours rollover: 23 → 00  

The design successfully met timing constraints and operated correctly on hardware.

---

##  Documentation

For complete design theory, specifications, and implementation details, refer to:  **DesignSpecs.md**

---





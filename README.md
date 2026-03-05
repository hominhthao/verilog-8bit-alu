# 8-bit ALU in Verilog

This project implements an **8-bit Arithmetic Logic Unit (ALU)** using **Verilog HDL**.
The ALU supports basic arithmetic and logical operations and is verified through simulation using **Icarus Verilog** and **GTKWave**.

---

## Features

* 8-bit input operands
* 3-bit opcode control
* Combinational ALU design
* Verilog testbench for verification
* Waveform-based simulation analysis

---

## Operations Supported

| Opcode | Operation | Description                 |
| ------ | --------- | --------------------------- |
| 000    | ADD       | Addition of two operands    |
| 001    | SUB       | Subtraction of two operands |
| 010    | AND       | Bitwise AND                 |
| 011    | OR        | Bitwise OR                  |

---

## Tools Used

* **Verilog HDL** – hardware description language
* **Icarus Verilog** – Verilog compiler and simulator
* **GTKWave** – waveform viewer

---

## Project Structure

```
verilog-8bit-alu/
├── src/                # Verilog design files
│   └── alu.v
│
├── tb/                 # Testbench
│   └── alu_tb.v
│
├── waveform/           # Simulation waveform screenshot
│   └── alu_waveform.png
│
└── README.md
```

---

## How to Run Simulation

### Compile

```bash
iverilog -o alu_tb tb/alu_tb.v src/alu.v
```

### Run simulation

```bash
vvp alu_tb
```

### Open waveform

```bash
gtkwave alu.vcd
```

---

## Simulation Waveform

The waveform below shows the verification of ALU operations.

![Waveform](waveform/alu_waveform.png)

---

## Example Test Case

Inputs:

```
a = 10 (0x0A)
b = 5  (0x05)
```

Results:

| Operation | Result    |
| --------- | --------- |
| ADD       | 15 (0x0F) |
| SUB       | 5  (0x05) |
| AND       | 0  (0x00) |
| OR        | 15 (0x0F) |

---

## Author

**Ho Minh Thao**
Electronics & Telecommunications Engineering Student
Interested in **Digital IC Design / VLSI / RTL Design**

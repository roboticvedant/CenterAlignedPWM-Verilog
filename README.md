# Center-Aligned PWM in Verilog

## Overview

This repository contains the Verilog code for a Center-Aligned Pulse Width Modulation (CAPWM) module. The project includes the main Verilog module, a testbench for simulation, and a Vivado project file for reference.

## Importance of Center-Aligned PWM
![Sim_graph](https://github.com/roboticvedant/CenterAlignedPWM-Verilog/blob/main/Sim_img/unnamed.jpg)
### In Power Electronics

Center-aligned PWM is a pivotal technique in power electronics, especially in advanced converters. Unlike edge-aligned PWM, which triggers transitions at the edges of the waveform, center-aligned PWM initiates transitions at the waveform's center. This symmetrical operation significantly reduces electromagnetic interference (EMI) and offers superior harmonic performance.

The method is particularly beneficial for minimizing switching noise and harmonic distortion, leading to higher efficiency and reliability in applications such as:

- DC-DC Converters
- AC-DC Converters
- Inverters
- Motor Drives
- Renewable Energy Systems

### Rarity in Simple Microcontrollers

While center-aligned PWM offers numerous advantages, it's somewhat rare in simple microcontrollers due to its complexity and the need for more advanced timer configurations. As a result, it is often reserved for more sophisticated control systems and power electronics applications.

## Contents

- `pwm.v`: The main Verilog module for the CAPWM.
- `pwm_tb.v`: The Verilog testbench for simulation.
- Vivado Project File: For synthesis and further exploration.

## Usage

Download the Vivado project file for a comprehensive implementation and simulation environment. The Verilog code uses a 8bit duty inputs for phaseA,phaseB and phaseC. This could be increased or decreased to optimize according to application. The test bench uses a 500MHz clock for simulation, which is relatively high for these applications, which could be changed according to hardware constraints for best simulation result.

---

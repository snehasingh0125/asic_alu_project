@echo off
cd /d %~dp0
cd ..
mkdir outputs 2>nul
iverilog -o outputs/alu.out src/alu.v sim/testbench.v
vvp outputs/alu.out
gtkwave outputs/alu.vcd
pause

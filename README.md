# Slot Machine

## Description 

Slot Machine is a physical slot machine made using 4 8x8 LEDS, shift registers and Xilinx FPGA. The code is run according to a Finite State Machine (FSM), where the states dictates the next step of code. 

This is a picture of our slot machine:\
![photo_2024-06-12_20-58-59](https://github.com/Leelexuan/FPGA-Slot-Machine-Project/assets/114202127/11fd3467-1882-403b-bc3a-0b6f8ae960e7)

## Game Modes
The slot machine has two game modes. 

### Mode 1
In the first mode, when a coin is inserted and the lever is pulled, the three LEDs will "spin". Pressing the button will cause all three LEDs to stop "spinning" consecutively. 
The player wins when all three LEDs stop at the same symbols. 

### Mode 2
In the second mode, after the coin is inserted and lever is pulled, the player has to press the button three times to stop each LED from "spinning" respectively. 
The player wins when all three LEDs stop at the same symbols. 

## Code Architecture

The main files that run the logic are:
1. control_unit.luc
2. registers.luc
3. rom.luc
4. alu.luc
   
### control_unit.luc
This is the where the FSM is defined and the main "brain" of the computer. The user's actions or timer will trigger the next state. 

### rom.luc
This stores the data that defines the symbols, which are written in byte chunks. The data is pushed using a shift register into the LEDS to light up a certain way. 

### registers.luc
This stores the line of the ROM section where the start of each LED sequence is. This prevents the computer from having too many registers and frees up space for faster computation. 

### alu.luc
This contains the mathematical logic used to run the code. 


## Credits 
This is a project done for 50.002 Computation Structures in Singapore University of Technology and Design.

Done by: 

Lee Le Xuan\
Darren Chan \
Lucas Tay\
Ryan Wang\
Isaac Koh \
Michelle Djunaidi





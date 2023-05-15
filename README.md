# Water-Level-Control-System
## Objective
Design a modest water level control system for a water tank using interrupts and other PIC16F877A programming techniques.

## Introduction
This project is an excellent illustration of how to use an external interrupt routine in a real setting. We have a water tank with three switches that detect water level. When the bottom switch is turned on, water fills and continues to fill even when the middle switch is turned on. When the third switch is turned on, however, the interrupt (RB0 external interrupt) is activated, removing water from the tank for 500 ms, or half a second. Our job was to design a PCB on which a PIC16F877A microcontroller could be mounted and signals sent to perform the stated action.

## Group members
    W.D.J Fernando      -EN21485886

    K.G.R.S Nanayakkara -EN21476730

    H.K.D Dinujaya      -EN21218712

## Operational design and truth table
A water tank with two DC motors is shown below. The first motor pumps water into the tank, while the second motor suctions water out of the tank. The water level in the tank is monitored by three sensors
<p align = "center">
<img width="380" alt="image" src="https://github.com/DerickFernando51/Water-Level-Control-System/assets/124335793/19b4453d-199f-454f-a8e0-71abb6c3bacd"> </p>
The following table explains how the two DC motors operate depending on the state of the switch.
<p align = "center">
<img width="500" alt="image" src="https://github.com/DerickFernando51/Water-Level-Control-System/assets/124335793/6f725e1a-044e-48b8-abfd-32952fbf5e21"></p>

## Apparatus
    3 x IR Obstacle Avoidance Sensor

    Jumper Wires

    2 x 220uF Capacitors

    16 Pin IC Base

    L293D Motor Driver IC

    40 Pin IC Base

    40x1 Male Header

    2 x 220nf capacitors

    2 x DC Motors(5V)

    1 x 10k Resistor

    Breadboard

    Arduino UNO Board

    20 MHz Crystal Oscillator

## PCB design
<p align="center">
<img width="417" alt="image" src="https://github.com/DerickFernando51/Water-Level-Control-System/assets/124335793/39c6d267-9f22-4433-9597-52c9f905396b"></p>

## Implementation
<p align="center">
<img width="550" alt="image" src="https://github.com/DerickFernando51/Water-Level-Control-System/assets/124335793/fbffb28a-82c7-4bed-b035-21f08ecca864"></p>

## Results
It is operating as expected on the PCB. The code was written in a way that if the switches were to input something other than the updated truth table values provided, it would momentarily stop all activities until the input matched what was required once more. This is due to the possibility that a malfunction may be the cause in the real world, and it is typically not a good idea to operate during a malfunction. The PCB circuit that has been implemented successfully performs both the function and the duty that were described.

## Conclusion
The objective of this project was to design a water level control system. Through this project we were able to gain a practical understanding of areas such as hardware design, microcontroller architecture and programming. Additionally, since this was a group project we were able to improve our team work, communication and collaboration skills. By working together and sharing our knowledge we were able to achieve the required outcome and complete the project successfully.

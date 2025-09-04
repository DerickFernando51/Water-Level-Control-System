# Water Level Control System (PIC16F877A)

A microcontroller-based system that controls the water level of a tank using interrupts, motor drivers, and sensors. The project was implemented in Embedded C on a PIC16F877A and deployed on a custom PCB. 


## Hardware Used

PIC16F877A Microcontroller

L293D Motor Driver IC

3 × IR Obstacle Avoidance Sensors (used as water level switches)

2 × DC Motors (5V) – one for inflow, one for outflow

20 MHz Crystal Oscillator




## Software & Tools

MPLAB X IDE – Microcontroller programming

Mutlisim – Simulation and testing

Proteus – PCB design


## System Design 

The system consists of a water tank with two motors. The first motor pumps water into the tank, while the second motor suctions water out of the tank. The water level in the tank is monitored by three sensors as shown below:

<p align = "center">
<img width="380" alt="image" src="https://github.com/DerickFernando51/Water-Level-Control-System/assets/124335793/19b4453d-199f-454f-a8e0-71abb6c3bacd"> </p>


The system was designed so that the tank continues to fill when Sensor 1 (bottom) and Sensor 2 (middle) are activated. However, when Sensor 3 (top) is triggered, an external interrupt activates, running the outflow motor for 500 ms to safely drain water and prevent overflow.

The motors are controlled via the L293D driver, with the PIC16F877A managing logic through interrupt routines.



## Implementation
<p align="center">
<img width="550" alt="image" src="https://github.com/DerickFernando51/Water-Level-Control-System/assets/124335793/fbffb28a-82c7-4bed-b035-21f08ecca864"></p>

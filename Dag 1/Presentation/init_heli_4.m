% FOR HELICOPTER NR 3-10
% This file contains the initialization for the helicopter assignment in
% the course TTK4115. Run this file before you execute QuaRC_ -> Build 
% to build the file heli_q8.mdl.

% Oppdatert høsten 2006 av Jostein Bakkeheim
% Oppdatert høsten 2008 av Arnfinn Aas Eielsen
% Oppdatert høsten 2009 av Jonathan Ronen
% Updated fall 2010, Dominik Breu
% Updated fall 2013, Mark Haring
% Updated spring 2015, Mark Haring


%%%%%%%%%%% Calibration of the encoder and the hardware for the specific
%%%%%%%%%%% helicopter
Joystick_gain_x = 1;
Joystick_gain_y = -1;


%%%%%%%%%%% Physical constants
g = 9.81; % gravitational constant [m/s^2]
l_c = 0.46; % distance elevation axis to counterweight [m]
l_h = 0.66; % distance elevation axis to helicopter head [m]
l_p = 0.175; % distance pitch axis to motor [m]
m_c = 1.92; % Counterweight mass [kg]
m_p = 0.72; % Motor mass [kg]


%%%%%%%%%%% Motor force constant

Vs0 = 7.80; % Voltage recuired for e = 0 [V]
K_f = -(l_c*m_c-2*m_p*l_h)*g/(l_h*Vs0); % Motor force constant 

%%%%%%%%%%% PD-regulator values
pole1 = -1;
pole2 = -20;

K_pp = 2*m_p*l_p^2*pole1*pole2 / K_f; 
K_pd = -2*m_p*l_p^2*(pole1 + pole2) / K_f;

K_1 = - K_f/(2*m_p*l_p^2);


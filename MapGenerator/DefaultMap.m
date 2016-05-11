addpath('../Sensors')
global timeslice
timeslice = 0.01;
str = GenerateCarControlMap(40,40,4.7,2.1,20,1);
displayCarControlMap(str, 1);
hold on;

%Transfer Function
%Kp Ki

clear;
sys= tf(1, [0.11 1]);
subplot(2,1,1);
step(sys);
subplot(2,1,2);
impulse(sys);
grid
[kpi,info]=pidtune(sys,'PI');
kpi=kpi/28.044;

%notes
%clear;
%sys=tf(9.090, [1 9.090]);
%[Kp,Ki,Kd,Tf]=piddata(sys);

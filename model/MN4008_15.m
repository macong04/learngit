%% 电机KV值为510KV，带15寸桨
%% 20200610 参数确定
J1 = 3.2e-4;   %桨,15寸，惯量数据可能不准
J2 = 5.2e-5;   %电机转子，转子惯量可能不准
% J2 = 12.503e-004;

J = (J1+J2)*1.5;    %inetia
Kf = 3.5E-6; %转子阻尼
KV = 510;  %% 
Ke = 1/(KV*2*pi/60)*1.414;   %反电动势系数V/rad   对应KV510
K = Ke*0.955;  % 力矩系数，对于反电动势为梯形波的BLDC电机，可以认为反电动势系数与力矩系数相等
% R = 137e-3;   %电阻
R = 98e-3 ;   %电阻
L = 100E-6; %inductance


% in class example of FTCS diffusion model
% jan 20 2016

N = 3;
dz = 10.0;  % spacing in m
k = 2;   % W/mK
dt = 1;  % s
rho = 2000; % kg/m3
Cp = 2000; % J/kg K

T = zeros(N,1);
dTdz = zeros(N,1);
q = zeros(N,1);

T(1) = -10;  % brr! -10 C
dTdz(N) = 0.025;  % K/m


% put following in loop

% calculate T gradient
dTdz(1:N-1) = diff(T)/dz;

% calculate heat flux
q = -k*dTdz;

% rate of change of T
dqdz = diff(q)/dz;

% update T
T(2:N) = T(2:N) - (1/(rho*Cp))*dqdz*dt;







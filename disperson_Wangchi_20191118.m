ear;clc;
close all;

eps1 = 1;
eps2 = 1.7877+1i*0.1645;
eps0 = 8.85*1e-12;

eta=3*10^-6;
charge_to_mass=1.7587*10^11;

kB = 1.3806*10^-23;
T = 300;
h_ = 1.055*10^-34;
gamas=kB*T/h_;

c = 3e8;


kx = linspace(0,1e2,100);
omega = linspace(0,1e10,100);
%omega = 2*pi*f;
[kx,omega] = meshgrid(kx,omega);
sigma = eta.*charge_to_mass./(1i.*omega+gamas);

fun1 = eps2*sqrt(eps1-(kx.*c./omega).^2)+sigma.*sqrt(eps1-(kx.*c./omega).^2).*sqrt(eps2-(kx.*c./omega).^2)+eps1*sqrt(eps2-(kx.*c./omega).^2);
fun2 = kx.^2-omega.^2/c^2;
subplot(2,2,1);
surf(kx,omega,abs(1./fun1));
shading interp;
view (2);
colorbar;
colormap hot;
axis tight;
subplot(2,2,2);
surf(kx,omega,abs(1./fun2));
shading interp;
view (2);
colorbar;
colormap hot;
axis tight;

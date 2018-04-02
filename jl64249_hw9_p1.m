%% 
% Problem 1
tic
clf;
t = linspace(-3*pi,3*pi,6001);
omega0=1;
RC=7;

in = -10000:10000;
xn = 1/2*sinc(in./2);
yn = xn./(1+1i.*in.*omega0.*RC);
y = sum(yn.*exp(1i*in*omega0.*t'),2);

hold on;
h = plot(t,y);
set(h,'LineWidth',1.5);
ylim([-.2 1.2])
toc

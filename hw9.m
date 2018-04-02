%% 
clf;
t = linspace(-3*pi,3*pi,10);
omega0=1;
%synthesize x(t) from Xn=1/2*sinc(n/2)
RC=7;
y = zeros(size(t));
for in = -10:10
    xn = 1/2*sinc(in/2);
    yn = xn/(1+1i*in*omega0*RC);
    y = y + yn*exp(1i*in*omega0*t);
end
hold on;
h = plot(t,y);
set(h,'LineWidth',1.5);
ylim([-.2 1.2])
%% 
clf;
t = linspace(-3*pi,3*pi,10);
omega0=1;
%synthesize x(t) from Xn=1/2*sinc(n/2)
RC=7;
y = zeros(size(t));

in = -10:10;
xn = 1/2*sinc(in./2);
yn = xn./(1+1i.*in.*omega0.*RC);

for i = -10:10
    y = y + yn(i+11)*exp(1i*i*omega0*t);
end

hold on;
h = plot(t,y);
set(h,'LineWidth',1.5);
ylim([-.2 1.2])
%% 
a = sin(1:20);

b = [0 0 1 2 3 0 0];

c = conv(a,b);

bar(c)

%% 
% Problem 2
x = sin(1:20);
h = [0 0 1 2 3 0 0];
y = conv(x,h);
bar(y)
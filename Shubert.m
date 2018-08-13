function [y] = Shubert(x1,x2)
y1 = 0;
y2 = 0;
for i = 1:5
    y1 = y1 + i*cos((i+1) * x1 + i);
    y2 = y2 + i*cos((i+1) * x2 + i);
end
y = y1 * y2;
end
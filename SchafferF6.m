function [y] = SchafferF6(x1,x2)
y = 0.5 + (sin((x1^2 + x2^2)^(1/2))^2 - 0.5)/(1 + 0.001*(x1^2 + x2^2))^2;
end
function [y] = Camel(x1,x2)
y = (4-2.1*x1^2 + x1^4/3)*x1^2 + x1*x2 + (-4+4*x2^2)*x2^2;
end
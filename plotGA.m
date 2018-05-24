% 打印算法迭代过程
% generation_size: 迭代次数

function plotGA(generation_size)
global fitness_average;
x = 1:generation_size;
y = fitness_average;
plot(x,y)
% 设置遗传算法的参数，测试效果
% 设定求解精度为小数点后4位

function main()
elitism = true;             % 选择精英操作
population_size = 100;      % 种群大小
chromosome_size = 20;       % 染色体长度
x1chromosome_size = 10;
generation_size = 50;      % 最大迭代次数
cross_rate = 0.8;           % 交叉概率
mutate_rate = 0.01;         % 变异概率

[best_individual,best_fitness,iterations,x1,x2] = genetic_algorithm(x1chromosome_size,population_size, chromosome_size, generation_size, cross_rate, mutate_rate,elitism);


fprintf('x1 = %f\nx2 = %f\n',x1,x2);
fprintf('best_fitness is %f\n',best_fitness);

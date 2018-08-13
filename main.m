% 设置遗传算法的参数，测试效果
% 设定求解精度为小数点后4位

function main()
<<<<<<< HEAD
global x1upper_bound;    %自变量取值上限
global x1lower_bound;        %自变量取值下限

global x2upper_bound;    %自变量取值上限
global x2lower_bound;        %自变量取值下限
elitism = true;             % 选择精英操作
population_size = 1000;      % 种群大小
chromosome_size = 200;       % 染色体长度
x1chromosome_size = 100;
generation_size = 5000;      % 最大迭代次数
cross_rate = 0.6;           % 交叉概率
mutate_rate = 0.2;         % 变异概率

x1upper_bound = -1.024;    %自变量取值上限
x1lower_bound = 1.024;        %自变量取值下限

x2upper_bound = -1.024;    %自变量取值上限
x2lower_bound = 1.024;        %自变量取值下限
=======
elitism = true;             % 选择精英操作
population_size = 100;      % 种群大小
chromosome_size = 20;       % 染色体长度
x1chromosome_size = 10;
generation_size = 50;      % 最大迭代次数
cross_rate = 0.8;           % 交叉概率
mutate_rate = 0.01;         % 变异概率
>>>>>>> c9460b7a203120ee7eeda06dae3540203108a967

[best_individual,best_fitness,iterations,x1,x2] = genetic_algorithm(x1chromosome_size,population_size, chromosome_size, generation_size, cross_rate, mutate_rate,elitism);


<<<<<<< HEAD
fprintf('best result is %f\nwhen\nx1 = %f\nx2 = %f\n',best_fitness,x1,x2);
fprintf('best result appears in the %dth iteration\n',iterations);






=======
fprintf('x1 = %f\nx2 = %f\n',x1,x2);
fprintf('best_fitness is %f\n',best_fitness);
>>>>>>> c9460b7a203120ee7eeda06dae3540203108a967

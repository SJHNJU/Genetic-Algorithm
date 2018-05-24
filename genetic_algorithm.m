% Genetic Algorithm for Functional Minium Problem
% f(x1,x2) = 100*(x1^2 -x2)^2 + (1-x1)^2;
% Created by jiahuiShe @2018/5/23

% population_size: 输入种群大小
% chromosome_size: 输入染色体长度
% generation_size: 输入迭代次数
% cross_rate: 输入交叉概率
% mutate_rate: 输入变异概率
% elitism: 输入是否精英选择
% m: 输出最佳个体
% n: 输出最佳适应度
% p: 输出最佳个体出现迭代次数
% q: 输出最佳个体自变量值
function [m,n,p,x1,x2] = genetic_algorithm(x1chromosome_size,population_size, chromosome_size, generation_size, cross_rate, mutate_rate, elitism)

global G ;              % 当前迭代次数
global fitness_value;   % 当前代适应度矩阵
global best_fitness;    % 历代最佳适应值
global fitness_average; % 历代平均适应值矩阵
global best_individual; % 历代最佳个体
global best_generation; % 最佳个体出现代
upper_bound = 1.024;        % 自变量的区间上限
lower_bound = 0;        % 自变量的区间下限

fitness_average = zeros(generation_size,1); % 将 generation_size*1 的零矩阵赋给 fitness_average

disp [jhS genetic algorithm]

fitness_value(population_size) = 0.;
best_fitness = 1000;%这里预估函数可能值，是进入best_individual的判断
best_generation = 0;

init(population_size, chromosome_size); % 初始化

for G=1:generation_size   
    fitness(population_size, chromosome_size);              % 计算适应度 
    rank(population_size, chromosome_size);                 % 对个体按适应度大小进行排序
    selection(population_size, chromosome_size, elitism);   % 选择操作
    crossover(population_size, chromosome_size, cross_rate);% 交叉操作
    mutation(population_size, chromosome_size, mutate_rate);% 变异操作
end

plotGA(generation_size);% 打印算法迭代过程

m = best_individual;    % 获得最佳个体
n = best_fitness;       % 获得最佳适应度
p = best_generation;    % 获得最佳个体出现时的迭代次数

% 获得最佳个体变量值，对不同的优化目标，这里需要修改
x1 = 0;
x2 = 0;
for j=1:x1chromosome_size
    if best_individual(j) == 1
            x1 = x1+2^(j-1);  % 最佳个体变量二进制转十进制
    end 
end

for j=x1chromosome_size+1:chromosome_size
    if best_individual(j) == 1
            x2 = x2+2^(j-x1chromosome_size-1);  % 最佳个体变量二进制转十进制
    end 
end
x1 = lower_bound + x1*(upper_bound-lower_bound)/(2^x1chromosome_size-1); % 解码
x2 = lower_bound + x2*(upper_bound-lower_bound)/(2^x1chromosome_size-1); % 解码


clear i;
clear j;
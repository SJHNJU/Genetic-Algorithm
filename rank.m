%对种群中个体按照适应度大小排序，最后population(i)的适应度随着i的递增而递增
%population_size 种群大小
%chromosome_size染色体长度
function rank(population_size,chromosome_size)
global population;
global fitness_value;
global fitness_sum;
global fitness_average;
global best_fitness;
global best_individual;
global best_generation;
global G;


for i = 1:population_size
    fitness_sum(i) = 0;
end


temp_chromosome(chromosome_size) = 0;

%冒泡排序
%遍历最小升到上面
for i = 1:population_size
    min_index = i;
    for j = i+1:population_size
        if fitness_value(j) < fitness_value(min_index)
            min_index = j;
        end
    end  
    
    %交换min_index行和第i行的染色体和fitness_value    
    if min_index ~= i
        temp_fitness_value = fitness_value(min_index);
        fitness_value(min_index) = fitness_value(i);
        fitness_value(i) = temp_fitness_value;
        
        for k = 1:chromosome_size
            temp_chromosome(k) = population(min_index,k);
            population(min_index,k) = population(i,k);
            population(i,k) = temp_chromosome(k);        
        end    
    end    
end

%fitness_sum(i) 前i个个体的适应度之和
for i = 1:population_size
    if i == 1
        fitness_sum(i) = fitness_value(1);
    else
        fitness_sum(i) = fitness_sum(i-1) + fitness_value(i);
    end
end

fitness_average(G) = fitness_sum(population_size)/population_size;

% 更新最大适应度和对应的迭代次数，保存最佳个体(最佳个体的适应度最小)
if fitness_value(1) < best_fitness
    best_fitness = fitness_value(1);
    best_generation = G;
    for j=1:chromosome_size
        best_individual(j) = population(1,j);
    end
end


clear i;
clear j;
clear k;
clear min_index;




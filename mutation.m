% 单点变异操作
% population_size: 种群大小
% chromosome_size: 染色体长度
% mutate_rate: 变异概率

function mutation(population_size, chromosome_size, mutate_rate)
global population;

for i=1:population_size
    if rand < mutate_rate
        mutate_position = round(rand*chromosome_size);  % 变异位置
        if mutate_position == 0
            % 若变异位置为0，不变异
            continue;
        end
        population(i,mutate_position) = 1 - population(i, mutate_position);
    end
end

clear i;
clear mutate_position;
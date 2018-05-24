% 单点交叉操作
% population_size: 种群大小
% chromosome_size: 染色体长度
% cross_rate: 交叉概率

function crossover(population_size, chromosome_size, cross_rate)
global population;

% 步长为2 遍历种群
for i=1:2:population_size
    % rand<交叉概率，对两个个体的染色体串进行交叉操作
    if(rand < cross_rate)
        cross_position = round(rand * chromosome_size);
        if (cross_position == 0 || cross_position == 1)
            continue;
        end
        % 对 cross_position及之后的二进制串进行交换
        for j=cross_position:chromosome_size
            temp = population(i,j);
            population(i,j) = population(i+1,j);
            population(i+1,j) = temp;
        end
    end
end


clear i;
clear j;
clear temp;
clear cross_position;

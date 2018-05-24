%对不同的个体进行评价的适应度函数
%population??size 种群大小
%chromosome_size 20位的染色体长度
function fitness(population_size,chromosome_size)
global fitness_value;
global population;

upper_bound = 1.024;    %自变量取值上限
lower_bound = 0;        %自变量取值下限
x1chromosome_size = 10; %x1染色体长度10位


for i = 1:population_size
    fitness_value(i) = 0;
    x1(i) = 0;
    x2(i) = 0;
end

for i = 1:population_size
    for j = 1:x1chromosome_size
        if(population(i,j) == 1)
            x1(i) = x1(i) + 2^(j-1);        %染色体串与实际自变量的二进制是相反的
        end 
    end
    for j = x1chromosome_size+1:chromosome_size
        if(population(i,j) == 1)
            x2(i) = x2(i) + 2^(j-x1chromosome_size-1);
        end
    end
    
    x1(i) = (upper_bound - lower_bound)*x1(i) / (2^x1chromosome_size - 1);
    x2(i) = (upper_bound - lower_bound)*x2(i) / (2^x1chromosome_size - 1);
    
    fitness_value(i) = target(x1(i),x2(i));

end

clear i;
clear j;


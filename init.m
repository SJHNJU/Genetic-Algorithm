%popultion_size 种群大小
%chromosome_size 20位染色体长度

function init(population_size,chromosome_size)
global population;
for i = 1:population_size
    for j = 1:chromosome_size
        population(i,j) = round(rand);
    end
end
clear i;
clear j;
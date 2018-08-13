function selection(population_size,chromosome_size)
global population;      % 前代种群
global population_new;  % 新一代种群

posibility_table = zeros(population_size);
for i = 1:population_size
    posibility_table(i) = (population_size-i)/population_size;
end

%轮盘赌选择方法
%选择概率和个体的排名有关，若个体的排名是i，共有N个个体，则被选中的概率是(N-i)/N
for i=1:population_size
    r = rand;  % 生成一个随机数，在[0,1]之间
    first = 1;
    last = population_size;
    mid = round((last+first)/2);
    idx = -1;
    
    % 排中法选择个体
    while (first <= last) && (idx == -1) 
        if r < posibility_table(mid)
            first = mid;
        elseif r > posibility_table(mid)
            last = mid;     
        else
            idx = mid;
            break;
        end
        mid = round((last+first)/2);
        if (last - first) == 1
            idx = last;
            break;
        end
    end
   
   % 产生新一代个体
   for j=1:chromosome_size
        population_new(i,j) = population(idx,j);
   end
end

population = population_new;


clear i;
clear j;
clear population_new;
clear first;
clear last;
clear idx;
clear mid;
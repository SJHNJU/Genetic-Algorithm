%对不同的个体进行评价的适应度函数
%population??size 种群大小
%chromosome_size 20位的染色体长度
<<<<<<< HEAD
function fitness(population_size,chromosome_size,x1chromosome_size)
global fitness_value;
global population;

global x1upper_bound;    %自变量取值上限
global x1lower_bound;        %自变量取值下限

global x2upper_bound;    %自变量取值上限
global x2lower_bound;        %自变量取值下限
=======
function fitness(population_size,chromosome_size)
global fitness_value;
global population;

upper_bound = 1.024;    %自变量取值上限
lower_bound = 0;        %自变量取值下限
x1chromosome_size = 10; %x1染色体长度10位

>>>>>>> c9460b7a203120ee7eeda06dae3540203108a967

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
    
<<<<<<< HEAD

    x1(i) = x1lower_bound + x1(i)*(x1upper_bound-x1lower_bound)/(2^x1chromosome_size-1); % 解码
    x2(i) = x2lower_bound + x2(i)*(x2upper_bound-x2lower_bound)/(2^x1chromosome_size-1); % 解码    

    fitness_value(i) = DeJongF2(x1(i),x2(i));
=======
    x1(i) = (upper_bound - lower_bound)*x1(i) / (2^x1chromosome_size - 1);
    x2(i) = (upper_bound - lower_bound)*x2(i) / (2^x1chromosome_size - 1);
    
    fitness_value(i) = target(x1(i),x2(i));
>>>>>>> c9460b7a203120ee7eeda06dae3540203108a967

end

clear i;
clear j;


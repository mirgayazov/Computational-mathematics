clc
exec('C:\Users\mirga\OneDrive\Рабочий стол\helper.sci' ,[-1])
//Лабораторная работа №10 Тема: Решение задач о планировании перевозок.
//Транспортная задача
//min(120x1+140x2+110x3+80x4+110x5+80x6)
//x1+x4=15
//x2+x5=13
//x3+x6=15
//x1+x2+x3=30
//x4+x5+x6=13
//ограничения
//x1>=0 & x1<=40
//x3>=10
//x2+x3<=60
//x4+x5>=50
//x2>=0, x4>=0, x5>=0, x6>=0

Aeq=[1 0 0 1 0 0
     0 1 0 0 1 0
     0 0 1 0 0 1
     1 1 1 0 0 0
     0 0 0 1 1 1]
beq=[15; 13; 15; 30; 13]            
lb=[0; 0; 0; 0; 0; 0]
ub=[30; 30; 30; 13; 13; 13]
c=[120; 140; 110; 80; 110; 80]

[xopt,fopt]=karmarkar(Aeq,beq,c,[],[],[],[],[],[],[],lb,ub)

my_disp('Cклад1 --> М1: ',round(xopt(1)),' шт.')
my_disp('Cклад1 --> М2: ',round(xopt(2)),' шт.')
my_disp('Cклад1 --> М3: ',round(xopt(3)),' шт.')
my_disp('Cклад2 --> М1: ',round(xopt(4)),' шт.')
my_disp('Cклад2 --> М2: ',round(xopt(5)),' шт.')
my_disp('Cклад2 --> М3: ',round(xopt(6)),' шт.')
my_disp('Минимальные затраты в рублях: ',round(fopt))

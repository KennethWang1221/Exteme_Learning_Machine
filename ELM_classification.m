%% 
%%== read and load UCI Classification Dataset--caesarian  ===%%
% . ELM Method
M = csvread('caesarian.csv.arff');

[M_shuffled] = caesarian_shuffle(M);

x_train =M_shuffled(1:6,1:50);
x_train = (x_train)';
x_train = x_train(:,[end,1:end-1]);

x_test =M_shuffled(1:6,51:80);
x_test = (x_test)';
x_test = x_test(:,[end,1:end-1]);
%% ========Training and Testing ============%%
 
    [TrainingTime,TestingTime,TrainingAccuracy, TestingAccuracy]=ELM(x_train,x_test, 1, 1000, 'hardlim');
 


    
    
    
    
    
    

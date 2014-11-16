% Script file
1;

function [x, y] = loadData()
data = load('ex1data1.txt');
x = data(:, 1); y = data(:, 2);
end

function [X, y, m] = load2()
data = load('ex1data2.txt');
X = data(:, 1:2);
y = data(:, 3);
m = length(y);
end


% Stuff to do at initialization
[X, y, m] = load2();
[X mu sigma] = featureNormalize(X);
X = [ones(m, 1) X];

alpha = 0.01;
num_iters = 400;
theta = zeros(3, 1);

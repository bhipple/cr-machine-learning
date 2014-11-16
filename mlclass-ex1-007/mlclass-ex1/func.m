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


[X, y, m] = load2()

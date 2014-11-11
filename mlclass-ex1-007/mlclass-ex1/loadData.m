function [x, y] = loadData()
data = load('ex1data1.txt');
x = data(:, 1); y = data(:, 2);
end

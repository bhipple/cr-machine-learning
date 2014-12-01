function p = predict(Theta1, Theta2, X)
%PREDICT Predict the label of an input given a trained neural network
%   p = PREDICT(Theta1, Theta2, X) outputs the predicted label of X given the
%   trained weights of a neural network (Theta1, Theta2)

% Useful values
m = size(X, 1);
num_labels = size(Theta2, 1);

% You need to return the following variables correctly
p = zeros(size(X, 1), 1);

% ====================== YOUR CODE HERE ======================
% Instructions: Complete the following code to make predictions using
%               your learned neural network. You should set p to a
%               vector containing labels between 1 to num_labels.
%
% Hint: The max function might come in useful. In particular, the max
%       function can also return the index of the max element, for more
%       information see 'help max'. If your examples are in rows, then, you
%       can use max(A, [], 2) to obtain the max for each row.
%

% X is in R^(5000x401)
% Theta1 is in R^(25x401)
% Theta2 is in R^(10x26)
% X2 must be in R^(5000x26)
% P is in R^(5000x1)

% Forward propogation: X and Theta1 form X2,
% then X2 and Theta2 form P

a_1 = [ones(size(X, 1), 1) X];
a_1_out = sigmoid(a_1 * Theta1');

a_2 = [ones(size(a_1_out, 1), 1) a_1_out];

a_3 = sigmoid(a_2 * Theta2');

vals = zeros(m, 1);
[vals, p] = max(a_3, [], 2);

for i=1:size(p, 1)
    if(p(i, 1) == 10)
        p(i, 1) = 0;
    end
end

% =========================================================================


end

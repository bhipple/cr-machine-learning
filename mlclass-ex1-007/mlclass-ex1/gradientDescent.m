function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESENT(X, y, theta, alpha, num_iters) updates theta by
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);

for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta.
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    %theta = theta - alpha * 1 / m * sum((X * theta - y)') * X)

    thetaPrev = theta;
    theta(1,1) = thetaPrev(1,1) - (alpha * 1 / m * sum((X * thetaPrev - y)' * X(:,1)));
    theta(2,1) = thetaPrev(2,1) - (alpha * 1 / m * sum((X * thetaPrev - y)' * X(:,2)));
    computeCost(X, y, theta)






    % ============================================================

    % Save the cost J in every iteration
    J_history(iter) = computeCost(X, y, theta);

end

return

% Debugging code to plot J vs. iterations
t = [num_iters];
for iter = 1:num_iters
    t(iter, 1) = iter;
end

plot(t, J_history)
pause;

end

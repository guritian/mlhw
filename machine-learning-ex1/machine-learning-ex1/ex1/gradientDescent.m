function [theta, J_history] = gradientDescent(X, y, theta, alpha, num_iters)
%GRADIENTDESCENT Performs gradient descent to learn theta
%   theta = GRADIENTDESCENT(X, y, theta, alpha, num_iters) updates theta by 
%   taking num_iters gradient steps with learning rate alpha

% Initialize some useful values
m = length(y); % number of training examples
J_history = zeros(num_iters, 1);
theta_s = theta;
for iter = 1:num_iters

    % ====================== YOUR CODE HERE ======================
    % Instructions: Perform a single gradient step on the parameter vector
    %               theta. 
    %
    % Hint: While debugging, it can be useful to print out the values
    %       of the cost function (computeCost) and gradient here.
    %
    
    %theta0
    
    theta(1) = theta(1) - alpha / m * sum(X * theta_s - y);       
    theta(2) = theta(2) - alpha / m * sum((X * theta_s - y) .* X(:,2));     % 必须同时更新theta(1)和theta(2)，所以不能用X * theta,而要用theta_s存储上次结果。
    
    %输出一下 此时的theta 便于观察变化
    disp(theta);
    theta_s=theta; 
    


    % ============================================================

    % Save the cost J in every iteration    
    J_history(iter) = computeCost(X, y, theta);

end

end

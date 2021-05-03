function coefs = hard_approximation(x, y)
A = ones(size(x, 2), 8); % 8ая - константа
A(1:size(x,2), 1:1) = (x.^3)';
A(1:size(x,2), 2:2) = (x.^2)';
A(1:size(x,2), 3:3) = x';
A(1:size(x,2), 4:4) = (sin(x))';
A(1:size(x,2), 5:5) = (cos(x))';
A(1:size(x,2), 6:6) = (log(x))';
A(1:size(x,2), 7:7) = (exp(x))';
coefs = (A' * A)\(A'*y');
line_x = 2:0.01:100;
line_y = zeros(1, size(line_x,2));
for i = 1:size(line_x,2)
     line_y(i) = coefs(1)*(line_x(i))^3 + coefs(2)*(line_x(i))^2 + coefs(3)*line_x(i) + coefs(4)*sin(line_x(i)) + coefs(5)*cos(line_x(i))+ coefs(6)*log(line_x(i)) + coefs(7)*exp(line_x(i)) + coefs(8);
end
appr_y = zeros(1, size(x,2));
for i = 1:size(x, 2)
    appr_y(i) = coefs(1)*(x(i))^3 + coefs(2)*(x(i))^2 + coefs(3)*x(i) + coefs(4)*sin(x(i)) + coefs(5)*cos(x(i))+ coefs(6)*log(x(i)) + coefs(7)*exp(x(i)) + coefs(8);
end
plot(line_x, line_y, '-b');
error_hard = sum_deviations_in_square(x, appr_y, y)
end
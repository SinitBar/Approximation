function coefs = cubes_approximation(x, y)
A = ones(size(x, 2), 4);
A(1:size(x,2), 1:1) = (x.^3)';
A(1:size(x,2), 2:2) = (x.^2)';
A(1:size(x,2), 3:3) = x';
coefs = (A' * A)\(A'*y');
line_x = 2:0.01:100;
plot(line_x,polyval(coefs, line_x), '-g');
error_cubes = sum_deviations_in_square(x, polyval(coefs, x), y)
end
function coefs = line_approximation(x, y)
A = ones(size(x, 2), 2);
A(1:size(x,2), 1:1) = x';
coefs = (A' * A)\(A'*y'); % коэффициенты прямой, первый - при икс, второй -
% свободный член
line_x = 2:0.01:100;
plot(line_x,polyval(coefs, line_x), '-m');
error_line = sum_deviations_in_square(x, polyval(coefs, x), y)
end
function error = sum_deviations_in_square(x, y, real_y) % вычисляет сумму квадратов отклонений аппроксимирующей функции от сгенерированных точек
error = 0;
for i = 1:size(x,2)
    error = error + (real_y(i)-y(i))^2;
end
end
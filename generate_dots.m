function y = generate_dots(x)
%x = generate_x()
% будем вычислять игрик как значение выбранной функции плюс отклонение
% в rand() (число из (0, 1)), и еще рандомом же определим знак этого
% отклонения
y = sin(exp(x./30)) + (x.^2)/2021;
rand_y = rand(1, size(y,2));
znak_y = rand(1, size(y,2));
% если > 0.5 => с минусом
for i = 1:size(y,2)
    if (znak_y(i) > 0.5)
        rand_y(i) = -rand_y(i);
    end
    y(i) = y(i) + rand_y(i);
end
ezplot('sin(exp(x/30))  + (x^2)/2021', [0 100])
hold on;
plot(x, y, 'k*');
axis auto;
end
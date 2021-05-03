x = generate_x() % выводим получившиеся иксы, после значения 100 можно увидеть те значения, которые повторяются
y = generate_dots(x); % генерируем зашумленные значения выбранной точки в найденных иксах
line_approximation(x, y); % аппроксимируем прямой
hold on;
parabola_approximation(x,y); % аппроксимируем параболой
hold on;
cubes_approximation(x,y);% аппроксимируем кубической параболой
hold on;
hard_approximation(x,y);% аппроксимируем кубической параболой, sin, cos, ln и exp
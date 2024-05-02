x = linspace(-5, 5, 100);

y1 = 2 - 2*sin(x);
y2 = (x.^2 + x) ./ (x.^2 - 3*x + 2);

[X, Y] = meshgrid(-5:0.2:5, -5:0.2:5);
Z = X.^2/4 + Y.^2/9;

figure;

subplot(1, 2, 1);
surf(X, Y, Z);
colormap spring; 
xlabel('X');
ylabel('Y');
zlabel('Z');
title('Поверхность: x^2/4 + y^2/9 = z');

subplot(1, 2, 2);
hold on;
plot(x, y1, 'r-', 'LineWidth', 2, 'Marker', 'o'); 
plot(x, y2, 'b--', 'LineWidth', 2, 'Marker', 's'); 
xlabel('X');
ylabel('Y');
title('Графики функций');
legend('f(x) = 2 - 2*sin(x)', 'f(x) = (x^2 + x) / (x^2 - 3*x + 2)');
hold off;

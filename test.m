function z = f(t, y)
  z = zeros(2,1); 
  z(1) = y(2);
  z(2) = (-5*y(2)) + (-6*y(1));
end

tspan = [0 5];
y0 = [0, 1];        % initial condition y(0) = 0, dy/dt(0) = 1
[t, y] = ode45(@f, tspan, y0);

plot(t, y(:,1), '-o')
xlabel('Time t')
ylabel('y(t)')
title('Solution of ODE')
grid on
hold on
exact = -exp(-3 * t)+exp(-2 * t);
plot(t, exact, '-r')
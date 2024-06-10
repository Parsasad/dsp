% Two Discrete Memory Chaotic Maps and Its DSP Implementation

% Define parameters
N = 1000; % Number of iterations
x = zeros(1,N); % Initialize x array
y = zeros(1,N); % Initialize y array
a = 0.2; % Parameter a
b = 0.3; % Parameter b

% Initial conditions
x(1) = 0.1;
y(1) = 0.2;

% Generate chaotic map
for n = 2:N
    x(n) = y(n-1) + a*x(n-1)*(1-x(n-1));
    y(n) = b*x(n-1);
end

% Plot the chaotic map
figure;
subplot(2,1,1);
plot(1:N, x, 'b');
title('Chaotic Map x(n)');
xlabel('n');
ylabel('x');

subplot(2,1,2);
plot(1:N, y, 'r');
title('Chaotic Map y(n)');
xlabel('n');
ylabel('y');

% Perform DSP implementation
X = fft(x); % Compute FFT of x
Y = fft(y); % Compute FFT of y

% Plot the FFT results
figure;
subplot(2,1,1);
plot(abs(X), 'b');
title('FFT of x(n)');
xlabel('Frequency');
ylabel('|X(f)|');

subplot(2,1,2);
plot(abs(Y), 'r');
title('FFT of y(n)');
xlabel('Frequency');
ylabel('|Y(f)|');
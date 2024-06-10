% DSP implementation
n = 1000;
y1 = chaotic_map1(n);
y2 = chaotic_map2(n);
z = y1 + y2; % Combine the two chaotic maps

% Plot the results
figure;
subplot(3,1,1);
plot(y1);
title('Chaotic Map 1');
subplot(3,1,2);
plot(y2);
title('Chaotic Map 2');
subplot(3,1,3);
plot(z);
title('Combined Chaotic Maps');

% Define the functions at the end of the script
function x1 = chaotic_map1(n)
    a1 = 3.8;
    b1 = 0.7;
    x1 = zeros(1, n);
    x1(1) = 0.1;
    for i = 2:n
        x1(i) = a1*x1(i-1)*(1-x1(i-1)) + b1;
    end
end

function x2 = chaotic_map2(n)
    a2 = 4;
    b2 = 0.6;
    x2 = zeros(1, n);
    x2(1) = 0.3;
    for i = 2:n
        x2(i) = a2*x2(i-1)*(1-x2(i-1)) + b2;
    end
end
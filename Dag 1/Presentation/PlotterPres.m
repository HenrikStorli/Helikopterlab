load('Presentation.mat');

figure(1);
plot(Pres(1,:),Pres(4,:));
legend('Pitch');
xlabel('Time [s]');
ylabel('Pitch [rad]');
title(['Pitch angle, pole1: ', num2str(pole1), ' pole2: ',num2str(pole2)]);
grid on;


figure(2);
plot(Pres(1,:),Pres(6,:));
legend('Elevation');
xlabel('Time [s]');
ylabel('Elevation [rad]');
title(['Elevation angle, pole1: ', num2str(pole1), ' pole2: ',num2str(pole2)]);
grid on;
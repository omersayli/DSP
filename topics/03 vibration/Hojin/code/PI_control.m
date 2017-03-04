%% PI

function PI_control

clear all; close all;

%% User Setting

kP =  1.0;
kI =  2.0;
r  = 50.0;
c  =  1.0;
m  =  1.0;
v  =  0.0; % initial velocity
tt = 10.0; % termination time

gamma = 0.5;

%% Computing

dt =  0.1;
t  =  0.0;
n  =  tt / dt + 1;
E  =  0.0;

for i = 1 : n - 1;
	e = error(v(i));
	u = input(e);
	a = deriv(u, v(i));
	v(i + 1) = v(i) + a * dt;
	t(i + 1) = t(i) + dt;
end

	function u = input(e)
	u = kP * e  + kI * E;
	end

	function e = error(v)
	e = r - v;
    E = E + e * dt;
	end

	function a = deriv(u, v)
	a = c * u / m - gamma * v;
	end

figure(1); hold on;
plot(t, v);
ylim([0, r + 10]);
xlabel('time'); ylabel('velocity');
end
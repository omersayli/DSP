%% PID

function PID_control

clear all; close all;

%% User Settings

kP =  1.0;
kI =  0.5;
kD =  0.1;
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
e_o=  r;
e_dot = 0.0;

figure(1); hold on;
xlabel('time'); ylabel('$\dot{e}$', 'interpreter', 'latex');

for i = 1 : n - 1;
    plot(t(i), e_dot, 'bo', 'markersize', 2);
	e = error(v(i));
    e_dot = (e - e_o) / dt;
	u = input(e);
	a = deriv(u, v(i));
	v(i + 1) = v(i) + a * dt;
	t(i + 1) = t(i) + dt;
    e_o = e;
end

	function u = input(e)
	u = kP * e  + kI * E + kD * e_dot;
    end

	function e = error(v)
	e = r - v;
    E = E + e * dt;
	end

	function a = deriv(u, v)
	a = c * u / m - gamma * v;
	end

figure(2); hold on;
plot(t, v);
ylim([0, r + 10]);
xlabel('time'); ylabel('velocity');
end
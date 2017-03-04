function BB_control

clear all; close all;

% ----- Adjust Parameters ------

um = 50.0 / 3;
r  = 50.0;
c  =  1.0;
m  =  1.0;
v  =  0.0; % initial velocity
tt = 10.0; % termination time

% ------------------------------

dt =  0.1;
t  =  0.0;
n  =  tt / dt + 1;
us =  um;

for i = 1 : n - 1;
	e = error(v(i));
	u = input(e);
	a = deriv(u);
	v(i + 1) = v(i) + a * dt;
	t(i + 1) = t(i) + dt;
    us(i + 1) = u;
end

	function u = input(e);
	if e > 0
        u = um;
    elseif e < 0
        u = -um;
    else
        u = 0;
    end
    end

	function e = error(v);
	e = r - v;
	end

	function a = deriv(u);
	a = c * u / m;
	end

figure(1); hold on;
plot(t, v);
ylim([0, r + 10]);
xlabel('time'); ylabel('velocity');

figure(2); hold on;
plot(t, us);
xlabel('time'); ylabel('input');
end
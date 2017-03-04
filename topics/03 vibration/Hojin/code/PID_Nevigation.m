%% PID Navigation

function PID_Nevigation

clear all; close all;

%% User Settings

kP =  1.0;
kI =  0.5;
kD =  0.1;
v  =  0.2; % constant speed
se =  0.0; % initial angle
rad=  0.5; % sensing radius

gamma = 0.5;
obstN = 20; % number of obstacle
size  =  4; % feild size

goal = [size*1.1 size*1.1]; % setting goal point
pos  = [0 0]; % setting starting point

%% Computing

dt    =  0.1;
t     =  0.0;
r_old =  0.0;
e     = [0 0 0 0]; % error initialize

obst = size * rand(obstN, 2); % generate random obstacles

escape = 0;
figure(1); hold on;
plot(obst(:, 1), obst(:, 2), 'ro');
plot([pos(1) goal(1)], [pos(2) goal(2)], 'ko');
xlim([-size*0.1 size*1.5]); ylim([-size*0.1 size*1.5]);

while escape == 0
    r = reference(pos, obst, goal); % get reference angle
	e = error(e, se, r);
	w = input(e);
	[pos, se] = deriv(w, pos, se);
    
    plot(pos(1), pos(2), 'b.');
    pause(0.01);
    
    if dist(pos, goal') < 0.1
        escape = 1;
    end
    
    t = t + dt;
end

    function r = reference(pos, obst, goal)
        r = atan2(det([[1 0]; goal - pos]), dot([1 0], goal - pos)); % default reference angle is defined by the direction of goal - pos vector
        if obstN ~= 0
            [do, so] = nearest(pos, obst); % distance & angle between current position & the nearest obstacle
            if do < rad
                if abs((so - pi) * 0.8 - 0.8 * r) > abs((so + pi) * 0.8 - 0.8 * r) % choose reference angle nearer to goal
                    r = (so + pi) * 0.8 + 0.2 * r; % 80% pure avoidance + 20% goal
                else
                    r = (so - pi) * 0.8 + 0.2 * r;
                end
            end
        end
        
        function [do, so] = nearest(pos, obst)
            do = size;
            for i = 1 : obstN
                d = dist(pos, obst(i, :)');
                if d < do
                    do = d;
                    so = atan2(det([[1 0]; obst(i, :) - pos]), dot([1 0], obst(i, :) - pos));
                end
            end
        end
    end

	function w = input(e)
	w = kP * e(1)  + kI * e(2) + kD * e(3);
    end

	function e = error(e, se, r)
    	e(1) = r - se; % current error
        e(2) = e(2) + e(1) * dt; % error integration
        e(3) = (e(1) - e(4)) / dt; % error derivative
        e(4) = e(1); % last error at next step
	end

	function [pos, se] = deriv(w, pos, se)
        pos(1) = pos(1) + v * cos(se) * dt;
        pos(2) = pos(2) + v * sin(se) * dt;
        se = se + w * dt;
	end

time = t
end
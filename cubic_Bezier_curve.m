function [ Bx By ] = cubic_Bezier_curve( p1,p2,p3,p4)
% Cubic Bezier Curve

% Input: four points

    % p1 = [x1,y1]
    % p2 = [x2,y2]
    % p3 = [x3,y3]    
    % p4 = [x4,y4]
    
% Output: the Bezier curve (spline) between p1 and p4 
% using the control points p2 and p3

% The Interval
t = [0:0.001:1]; % <---- Adjust for finer resolution if needed
Lt = length(t);

% The curve
% B(t) = (1-t)^3*p1 + 3*(1-t)^2*t*p2 + 3*(1-t)*t^2*p3 + t^3*p4
x = 1; % x coordinate index
y = 2; % y coordinate index
Bx = zeros(1,Lt);
By = Bx;
Bx = ((1-t).^3).*p1(x)+((((1-t).^2).*t).*3).*p2(x)+(((1-t).*(t.^2)).*3).*p3(x)+(t.^3).*p4(x);
By = ((1-t).^3).*p1(y)+((((1-t).^2).*t).*3).*p2(y)+(((1-t).*(t.^2)).*3).*p3(y)+(t.^3).*p4(y);


end

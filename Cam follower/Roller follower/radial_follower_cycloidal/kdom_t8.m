L=40;
rise=pi;
ret=pi;
r_p=50;
r_r=10;
x=[];
y=[];

function l = lift(theta,L,rise,ret)
    if theta < 180
        theta = deg2rad(theta);
        l = L*(((theta)/rise)-(1/(2*pi))*sin(2*pi*(theta)/rise));
    else 
        theta = deg2rad(theta);
        l = L*(1-((theta-rise)/ret)+(1/(2*pi))*sin(2*pi*((theta)-rise)/ret));
    end
end


function x = X(theta,phi,r_r,r_p,L,rise,ret)
    if theta < 180
        x = (r_r*sin(phi))*cosd(theta) + (r_p + lift(theta,L,rise,ret) - r_r*cos(phi))*sind(theta);
    else
        x = -(r_r*sin(phi))*cosd(theta) + (r_p + lift(theta,L,rise,ret) - r_r*cos(phi))*sind(theta);
    end
end

function y = Y(theta,phi,r_r,r_p,L,rise,ret)
   if theta < 180
        y = -(r_r*sin(phi))*sind(theta) + (r_p + lift(theta,L,rise,ret) - r_r*cos(phi))*cosd(theta);
    else
        y = +(r_r*sin(phi))*sind(theta) + (r_p + lift(theta,L,rise,ret) - r_r*cos(phi))*cosd(theta);
    end
end

for theta = 0:5:360
    phi = atan((lift(theta+0.001,L,rise,ret)-lift(theta,L,rise,ret))/0.001)/(r_p + lift(theta,L,rise,ret));
    x = [x,X(theta,phi,r_r,r_p,L,rise,ret)];
    y = [y,Y(theta,phi,r_r,r_p,L,rise,ret)];
end

plot(x,y)







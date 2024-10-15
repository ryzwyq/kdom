function z = loopfun_vel(t,l,t2,w, w0)
    z(1) = -w0*l(2)*sin(t2) - w(1)*l(3)*sin(t(1)) + w(2)*l(4)*sin(t(2));
    z(2) = w0*l(2)*cos(t2) + w(1)*l(3)*cos(t(1)) - w(2)*l(4)*cos(t(2));
end
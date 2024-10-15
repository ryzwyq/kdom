function q = loopfun_acc(a, l, t2, w, w0, a2,t)
    q(1) = -a2*l(2)*sin(t2)-a(1)*l(3)*sin(t(1))+a(2)*l(4)*sin(t(2))-l(2)*w0*w0*cos(t2)-l(3)*w(1)*w(1)*cos(t(1))-l(4)*w(2)*w(2)*cos(t(2));
    q(2) = a2*l(2)*cos(t2)+a(1)*l(3)*cos(t(1))-a(2)*l(4)*cos(t(2))-l(2)*w0*w0*sin(t2)-l(3)*w(1)*w(1)*sin(t(1))-l(4)*w(2)*w(2)*sin(t(2));
end
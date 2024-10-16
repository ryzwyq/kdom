%Loop closure equation for slider crank mechanism 
function s = slidercrank_vel(l, v, d, w, t)
    s(1) = v(1) - l(5)*v(2)*sin(d(2)) + l(6)*w(2)*sin(t(2)+0.263);
    s(2) = l(5)*v(2)*cos(d(2))-l(6)*w(2)*cos(t(2)+0.263);
end

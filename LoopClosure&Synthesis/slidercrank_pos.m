function k = slidercrank_pos(d, t,l)
    k(1) = -3.7+d(1)+l(5)*cos(d(2))-l(6)*cos(t(2)+0.263);
    k(2) = 5 + l(5)*sin(d(2))-l(6)*sin(t(2)+0.263);
end

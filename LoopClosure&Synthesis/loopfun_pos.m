function y = loopfun_pos(t, l, t2)  
    y(1) = l(2)*cos(t2) + l(3)*cos(t(1)) - l(4)*cos(t(2)) - 3.7;
    y(2) = l(2)*sin(t2) + l(3)*sin(t(1)) - l(4)*sin(t(2)) + 2;
end

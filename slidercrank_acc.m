function p = slidercrank_acc(acc, t, v, w, a, l, d)
    p(1) = acc(1) - l(5)*acc(2)*sin(d(2)) + l(6)*a(2)*sin(t(2)+0.263) - l(6)*w(2)*w(2)*cos(t(2)+0.263) - l(5)*v(2)*v(2)*cos(d(2));
    p(2) = l(5)*acc(2)*cos(d(2)) - l(6)*a(2)*sin(t(2) + 0.263) - l(6)*w(2)*w(2)*sin(t(2)+0.263) - l(5)*v(2)*v(2)*sin(d(2));
end
g=->a{a.each_cons(2).count{_1<_2}};$<.map(&:to_i).tap{p g[_1],g[_1.each_cons(3).map(&:sum)]}

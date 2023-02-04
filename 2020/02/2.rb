i = File.readlines("input.txt").map{ s,e,l,pw = _1.scan /\w+/; [s.to_i,e.to_i,l,pw] }

p i.count{ |s,e,l,pw| (s..e).include? pw.count l }
p i.count{ |s,e,l,pw| (pw[s-1] == l) ^ (pw[e-1] == l) }

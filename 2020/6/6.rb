i = File.read("input.txt").split("\n\n").map{|b| b.lines.map{|l| l.chomp.chars}}

p [:|,:&].map{|s| i.map{|a| a.reduce(s).size}.sum}

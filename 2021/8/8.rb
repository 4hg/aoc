i = $<.map{ _1.split(" | ").then{ |l| [l[0], l[1].strip] } }
def silver(i) = i.map{ _2.split.count{ |c| [2,3,4,7].include? c.size } }.sum
p silver i
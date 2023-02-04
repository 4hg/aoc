d = $<.map{ |l| l.chomp.chars.map(&:to_i) }

def silver(i)
  i.transpose
   .map{ |a| a.sum > a.count(0) ? 1 : 0 }
   .join
   .then{ |i| i.to_i(2) * i.tr('01', '10').to_i(2) }
end

def o_rating(i, b)
  return i.join.to_i(2) if i.size == 1
  mcb = i.transpose[b].then{ |a| a.sum >= a.count(0) ? 1 : 0 }
  return o_rating(i.filter{ |a| a[b] == mcb }, b + 1)
end

def c_rating(i, b)
  return i.join.to_i(2) if i.size == 1
  lcb = i.transpose[b].then{ |a| (a.sum >= a.count(0) ? 1 : 0) ^ 1 }
  return c_rating(i.filter{ |a| a[b] == lcb }, b + 1)
end

def gold(i) = o_rating(i, 0) * c_rating(i, 0)

p silver(d), gold(d)

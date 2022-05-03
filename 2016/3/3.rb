i = $<.map{ _1.chomp.split.map &:to_i }

def go trs
  trs.count{ |tr|
    (0..2).map{ |n|
      *h, t = tr.rotate n
      h.sum > t
    }.all?
  }
end

# silver
p go i
# gold
p i.transpose.map{ _1.each_slice 3 }.sum{ go _1 }

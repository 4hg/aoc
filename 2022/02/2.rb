def conv(c) = c.ord % 65 % 23
def go(o, m, part=nil)
  os = %w(R P S)
  rs = {?A => -1, ?B => 0, ?C => 1}
  choice = (!part ? os : os.rotate(rs[o]))[conv m]
  m = "Y XZ"[choice.ord % 80]
  (1 + conv(m)).+ ("%07s".% os.rotate(rs[o])*"  ") =~ /#{choice}/
end

File.read("input.txt")
    .scan(/([A-C]) ([X-Z])/)
    .then{ |d|
      puts [d.sum{ go *_1 }, d.sum{ go *_1, ?! }]*", "
    }

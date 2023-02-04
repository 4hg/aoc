h, t = [[0,0], [0,0]]
ds = {?R => [1, 0], ?L => [-1, 0], ?U => [0, 1], ?D => [0, -1]}
hs = [f]
instructions = File.readlines("input.txt", chomp: true).map(&:split)
instructions.each do |ins|
  d, c = ins
  x, y = ds[d]
  c.times{ h[0] += x; h[1] += y }

end
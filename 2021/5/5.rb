@grid = Array.new(1000){Array.new(1000,0)}
lines = 
  open("input.txt")
  .read
  .split("\n")
  .map{ |l| l.split(" -> ").map{ |r| r.split(",").map(&:to_i) } }

c = ->{ _1.first == _2.first || _1.last == _2.last }


def silver(i)
  i.filter { _1[0][1] == _1[1][1] }.map(&:sort).each{ |l, r| [*(l[0]..r[0])].each{ |i| @grid[l[1]][i] += 1 } }
  i.filter { _1[0][0] == _1[1][0] }.map(&:sort).each{ |l, r| [*(l[1]..r[1])].each{ |i| @grid[i][l[0]] += 1 } }
  @grid.map{ _1.count{ |v| v > 1 } }.sum
end

p silver lines.filter{ c[_1[0], _1[1]] }

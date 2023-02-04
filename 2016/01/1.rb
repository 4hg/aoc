input = File.read("input.txt").split(", ").map{ d, n = _1.scan(/(L|R)(\d+)/).flatten; [d, n.to_i]}
x = y = 0
dir = [["N", 1], ["E", 1], ["S", -1], ["W", -1]]
r = {"R" => 1, "L" => -1}

input.each{ |d, n|
  dir.rotate! r[d]
  ["N", "S"].include?(dir[0][0]) && (y += n * dir[0][1]) || x += n * dir[0][1]
}

# part a
p x.abs + y.abs

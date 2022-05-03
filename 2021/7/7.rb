i = $<.read.split(",").map(&:to_i)
def f(n) = n * (n + 1) / 2
def silver(i) = i.map{ |n| i.map{ |v| (v-n).abs }.sum }.min
def gold(i) = (0..i.max).map{ |n| i.map{ |v| f (v-n).abs }.sum }.min
p silver(i), gold(i)

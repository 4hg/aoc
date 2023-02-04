i = open("input.txt").read.split("\n\n")
ns = i[0].split(",").map(&:to_i)
bs = *i[1..].map{ |b| b.split("\n").map{ |l| l.split.map(&:to_i) } }

def winner?(b) = b.map{ |r| r.all?{ |n| n < 0 } }.reduce(:|)

def w(b) = winner?(b) || winner?(b.transpose)

def solve(ns, b)
  ns.each do |n|
    b.map!{ |r| r.map{ |v| v == n ? -(v+1) : v } }
    return [n, b] if w(b)
  end
end

results = 
  bs.map{
    n, winner = solve(ns, _1)
    [ns.index(n), n * winner.flatten.filter{ |v| v > 0 }.sum]
  }

def silver(bs) = bs.sort.first.last
def gold(bs)   = bs.sort.last.last

p silver(results), gold(results)

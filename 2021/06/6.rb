def solve c, mature, newborns
  c.times do
    mp = mature[0]
    nbp = newborns[0]
    mature = mature.rotate
    mature[6] += nbp
    newborns = newborns.rotate
    newborns[8] = mp + nbp
  end
  mature.sum + newborns.sum
end

mature = Array.new(7,0)
newborns = Array.new(9,0)
open("input.txt").read.split(?,).map(&:to_i).each{ mature[_1] += 1 }

p solve  80, mature, newborns
p solve 256, mature, newborns

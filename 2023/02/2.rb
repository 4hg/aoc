@s, @g = 0, 0
input = File.readlines("input.txt").each { |l|
  gs = l.scan(/(\d+) (.)/).map { [_1.to_i, _2] }

  b   = gs.any? { _1.to_i > _2.ord % 3 + 12 }
  @s += b && 0 || l[/\d+/].to_i
  
  @g += gs.group_by { _1.last }.map{ _1.last.max.first }.reduce :*
}

p @s, @g
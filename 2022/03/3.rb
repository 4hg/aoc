priority = ->{ 1 + [*?a..?z,*?A..?Z].index(_1) }
type = ->{ _1.map(&:chars).reduce(:&).first }

File.readlines("input.txt", chomp: true)
    .tap{ $gold = _1.each_slice(3).map(&type).sum(&priority) }
    .map{ type[_1.scan(/.{#{_1.size / 2}}/)] }
    .sum(&priority)
    .then{ puts [_1, $gold]*", " }

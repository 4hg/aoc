silver = gold = 0
File.readlines("input.txt", chomp: true).each{
  a, b = eval "[#{_1.gsub /\-/, '..'}]"
  silver += 1 if a.cover? b or b.cover? a
  gold   += 1 if (a.to_a & b.to_a).any?
}

puts [silver, gold]*", "

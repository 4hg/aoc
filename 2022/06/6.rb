input = File.read("input.txt", chomp: true).chars
puts [4, 14].map{ |ws| ws + input.each_cons(ws).find_index{ _1.uniq == _1 } }*", "

File.readlines("input.txt", sep="\n\n")
    .map{ _1.split.sum &:to_i }
    .max(3)
    .then{ puts [_1[0], _1.sum]*", " }

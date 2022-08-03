#recursion

def range_iter(start, end_1)
    return [] if end_1 < start
    (start...end_1).map {|el| el}
end

def recurs_range(start, ending)
    return [] if ending <= start
    return [start] if ending - 1 == start


    return  [start] + recurs_range(start + 1, ending)
end

def exponentiation_1(base, xp)
    return 1 if xp == 0
    return base * exponentiation_1(base, xp - 1)
end

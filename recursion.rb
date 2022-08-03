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

def exponentiation_2(base, xp)
    return 1 if xp == 0
    return base if xp == 1
    if xp % 2 == 0
        prev = exponentiation_2(base, xp / 2)
        return prev * prev
    else
        prev = exponentiation_2(base, (xp - 1) / 2) * 2
        base * prev
    end
end

# p exponentiation_1(2, 3)
# p exponentiation_2(2, 3)
# p exponentiation_2(2, 4)

def deep_dup(multi_array)
    return multi_array.map { |ele| ele} if multi_array.all? { |sub_ele| !sub_ele.is_a?(Array)}


end
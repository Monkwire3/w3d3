#recursion
require 'byebug'

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
    return multi_array.map { |ele| ele } if multi_array.all? { |sub_ele| !sub_ele.is_a?(Array) }

    return multi_array.map do |el|
        (el.is_a?(Array) ? deep_dup(el) : el)
    end

end


def fib(n)
    return [] if n == 0
    return [0] if n == 1
    return [0, 1] if n == 2

    prev = fib(n - 1)
    fib_array = prev
    fib_array << prev[-1] + prev[-2]

    return fib_array
end


p fib(5)
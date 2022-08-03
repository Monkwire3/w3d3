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
    return multi_array.map { |ele| ele} if multi_array.all? { |sub_ele| !sub_ele.is_a?(Array)}
end

def bsearch(array, n)
    return nil if array.length == 0

    middle_i = array.length / 2

    if array[middle_i] == n
        return middle_i
    elsif array[middle_i] > n
        return bsearch(array[0...middle_i], n)
    else
        prev = bsearch(array[middle_i + 1..-1], n)
        return nil if prev == nil
        return middle_i + 1 + prev
    end
end


# p bsearch([1, 2, 3], 1) # => 0
# p bsearch([2, 3, 4, 5], 3) # => 1
# p bsearch([2, 4, 6, 8, 10], 6) # => 2
# p bsearch([1, 3, 4, 5, 9], 5) # => 3
# p bsearch([1, 2, 3, 4, 5, 6], 6) # => 5
# p bsearch([1, 2, 3, 4, 5, 6], 0) # => nil
# p bsearch([1, 2, 3, 4, 5, 7], 6) # => nil



def merge_helper(arr_1, arr_2)

    while arr_1.length > 0
        arr_2.each_with_index do |num, idx|
            if arr_1[0] < num
                arr_2 = arr_2[...idx] + [arr_1.shift] + arr_2[idx..]
                break
            end
        end
    end

    return arr_2

end

def merge_sort(arr)
    # debugger
    return arr if arr.length <= 1


    
 #   if arr.length == 1
        #return merge_helper(arr, )



    first_half = merge_sort(arr[0...(arr.length / 2)])
    second_half = merge_sort(arr[((arr.length / 2))..-1])


    return first_half + second_half if first_half.length == 1 && second_half.length == 1
  
    return merge_helper(first_half, second_half)

end

#p merge_sort([38, 27, 43, 3, 9, 82, 10, 6])


arr_1 = [1, 3, 56, 92, 32]
arr_2 = [23, 45, 55, 90, 98]

p merge_helper(arr_1, arr_2)
p merge_helper([2], [3])
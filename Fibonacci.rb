def fibs(n)
    array = [0, 1]
    (2..n-1).each { |i| array[i] = array[i-1] + array[i-2] }
    return array
end

def fibs_rec(n, array = [0, 1])
    return array if n <= 2

    array << array[-1] + array[-2]
    fibs_rec(n - 1, array)
end

puts fibs(8)      # Output: [0, 1, 1, 2, 3, 5, 8, 13]
puts fibs_rec(8)  # Output: [0, 1, 1, 2, 3, 5, 8, 13]
 
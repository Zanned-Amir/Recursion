def merge_sort(array)
    return array if array.length <= 1

    mid = array.length / 2
    left = merge_sort(array[0...mid])
    right = merge_sort(array[mid..-1])

    merge(left, right)
end

def merge(left, right)
    result = []
    until left.empty? || right.empty?
        result << (left.first < right.first ? left.shift : right.shift)
    end
    result + left + right
end

puts merge_sort([1,6,3,2,4,5,7,8,9,0]) # Output: [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
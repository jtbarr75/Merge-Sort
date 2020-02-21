def merge_sort(arr)
  return arr if arr.length == 1
  left = merge_sort(arr[0...arr.length/2])
  right = merge_sort(arr[arr.length/2..arr.length])
  merged = []
  until left.empty? || right.empty?
      left[0] < right[0] ? merged << left.shift : merged << right.shift
  end
  merged + left + right
end


ARR = Array.new(100) {rand(100)}

puts merge_sort(ARR).inspect
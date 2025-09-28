def bubble_sort(arr)
  arr_len = arr.size
  return arr if arr_len <= 1

  loop do
    swapped = false

    (arr_len - 1).times do |i|
      if arr[i] > arr[i + 1]
        arr[i], arr[i + 1] = arr[i + 1], arr[i]
        swapped = true
      end
    end

    break if not swapped
  end

  arr
end

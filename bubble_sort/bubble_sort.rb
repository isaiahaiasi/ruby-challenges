# mutates original
def bubble_sort!(arr)
  changed = true

  while changed == true do
    changed = false

    for i in 1...arr.length
      if arr[i] < arr[i - 1]
        arr[i], arr[i - 1] = arr[i - 1], arr[i]
        changed = true
      end
    end

  end

  arr
end

# creates a copy
def bubble_sort(input_array)
  arr = input_array.clone
  bubble_sort!(arr)
end

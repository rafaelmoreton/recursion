# frozen_string_literal: true

def merge_sort(array)
  return array if array.size < 2

  left = merge_sort(array[0..array.size / 2 - 1])
  right = merge_sort(array[array.size / 2..array.size - 1])

  merge = []
  loop do
    if left.empty?
      merge += right
      break
    elsif right.empty?
      merge += left
      break
    elsif left[0] < right[0]
      merge << left[0]
      left.shift
    else
      merge << right[0]
      right.shift
    end
  end
  merge
end

require 'pry-byebug'

def merge_sort(arr)
  
  if arr.length < 2
    return arr
  else
    left = merge_sort(arr[0...arr.length / 2])
    right = merge_sort(arr[arr.length / 2...arr.length])
  end

  new_arr = []

  (left.length + right.length).times do
    if left == []
      new_arr << right
      break
    elsif right == []
      new_arr << left
      break
    else 
      comparison = left[0] <=> right[0]

      if comparison == -1
        new_arr << left.shift
      elsif comparison == 1
        new_arr << right.shift
      else
        new_arr << right.shift
      end
    end
  end
  new_arr.flatten
end

arr_rand = []

50.times { arr_rand << rand(100)}

p arr_rand
p merge_sort(arr_rand)
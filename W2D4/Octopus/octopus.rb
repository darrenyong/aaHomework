sorted_fishes = ['fish', 'fiiish', 'fiiiiish', 'fiiiish', 'fffish', 'ffiiiiisshh', 'fsh', 'fiiiissshhhhhh']
fishes = sorted_fishes.shuffle


# Sluggish Octopus - O(n^2)
# sluggish_octopus(fishes)
def sluggish_octopus(arr)
  sorted = false

  until sorted
    sorted = true
    arr.each_with_index do |ele, idx|
      next if idx + 1 == arr.length
      next_idx = idx+1
      if arr[idx].length > arr[next_idx].length
        sorted = false
        arr[idx], arr[next_idx] = arr[next_idx], arr[idx]
      end
    end
  end

  return arr.last
end


# Dominant Octopus - O(n log n)
# dominant_octopus(fishes)
def dominant_octopus(arr)
  return arr if arr.length <= 1

  mid = arr.length/2
  left_half = dominant_octopus(arr[0...mid])
  right_half = dominant_octopus(arr[mid..-1])

  sorted_oct_arr = merge_oct(left_half, right_half)
end

def merge_oct(left, right)
  merged_arr = []

  until left.empty? || right.empty?
    left_length = left[0].length
    right_length = right[0].length
    if left_length < right_length
      merged_arr << left.shift
    elsif right_length < left_length
      merged_arr << right.shift
    elsif left_length == right_length
      merged_arr << left.shift
    end
  end

  merged_arr + left + right
end

sorted_oct_arr = dominant_octopus(fishes)
sorted_oct_arr.last


# Clever Octopus - O(n)
# clever_octopus(fishes)
def clever_octopus(arr)
  longest_fish = ""
  arr.each do |ele|
    if ele.length > longest_fish.length
      longest_fish = ele
    end
  end

  return longest_fish
end


# Dancing Octopus
tiles_array = ["up", "right-up", "right", "right-down", "down", "left-down", "left", "left-up" ]

# Slow Dance - O(n)
def slow_dance(tile, tile_arr)
  tile_arr.each_index do |idx|
    return idx if tile_arr[idx] == title
  end
end
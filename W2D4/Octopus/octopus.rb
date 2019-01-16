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
  

end
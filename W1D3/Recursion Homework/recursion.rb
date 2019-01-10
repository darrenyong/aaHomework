# Exercise 1 - sum_to
def sum_to(n)
  if n <= 0
    return nil
  elsif n <= 1
    return 1
  end

  n + sum_to(n-1)
end


# Exercise 2 - add_numbers
def add_numbers(num_array)
  if num_array.length == 0
    return nil
  elsif num_array.length == 1
    return num_array[0]
  end

  num_array[0] + add_numbers(num_array[1..-1])
end


# Exercise 3 - gamma_fnc
def gamma_fnc(n)
  if n == 0
    return nil
  elsif n <= 1
    return 1
  end

  (n-1) * gamma_fnc(n-1)
end


# Exercise 4 - ice_cream_shop
def ice_cream_shop(flavor_arr, favorite_flavor)
  if flavor_arr.length == 0
    return false
  elsif flavor_arr.length < 2
    flavor_arr.include?(favorite_flavor)
  end

  flavor_arr[0] == favorite_flavor || ice_cream_shop(flavor_arr[1..-1], favorite_flavor)
end


# Exercise 5 - reverse
def reverse(str)
  # hello
  if str.length == 1
    return str
  end
  #o lleh
  str[-1] + reverse(str[0...-1])
end
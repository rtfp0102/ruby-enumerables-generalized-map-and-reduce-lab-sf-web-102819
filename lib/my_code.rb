def map(array)
  new_array = []
  i = 0 
  while i < array.length do
    n = array[i]
    new_array.push(yield(n))
    i += 1 
  end
  return new_array
end
map([1, 2, 3, -9]) {|n| n * -1}

def reduce(source_array, start = nil)
  if start 
    memo = start
    i = 0 
    
  else 
    memo = source_array[0] 
    i = 1 
  end
  while  i < source_array.length do
    n = source_array[i]
    memo = yield(memo, n)
    i += 1 
  end
  return memo
end






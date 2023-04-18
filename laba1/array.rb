def min_element (arr)
  return nil if arr.empty?
  l  = arr.length
  min = arr[0]
  for x in 0...l
    min = arr[x] if arr[x]<min
  end
  min
end

def positive_el(arr)
  return nil if arr.empty?
  l = arr.length
  for x in 0..l
    if arr[x] > 0
      return arr[x]
    end
    -1
  end
end


puts"Write Arr path"
path = ARGV[1]
file = File.open(path)
array = file.readline.split(' ').map(&:to_i)
puts array
puts"Choose method: "
met = ARGV[0].to_i
puts met
if (met==1)
  then puts min_element(array)
else
  puts positive_el(array)
end

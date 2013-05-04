def array_sum(array)
  array.inject(:+)
end

a = [1,2,3,4,5]
puts array_sum(a)

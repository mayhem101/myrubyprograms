def array_sum(array)
  array.inject(0) { |result, element| result+element}
end

a = [1,2,3,4,5]
puts array_sum(a)

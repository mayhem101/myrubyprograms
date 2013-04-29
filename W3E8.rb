numbers = (1..100).to_a
modified_num = []
numbers.each do |num|
  if  num % 15 == 0
    num = "FizzBuzz"
  else
    if num % 5 == 0
    num = "Buzz"
    elsif num % 3 == 0
      num = "Fizz"
    end
  end
  modified_num << num
end
puts modified_num

numbers = (1..100).to_a
modified_num = []
numbers.each do |num|
  val = num
  num = ((num % 3 == 0)? "Fizz" : "") + ((num % 5 == 0 ?  "Buzz" : "")) 
  num = val if num.empty?
  modified_num << num
end
puts modified_num

puts "Enter your age in seconds"
age_in_seconds = gets.chomp!
age = age_in_seconds.to_f/(365*24*60*60)
puts "Your age in years is #{format("%.2f",age)}"

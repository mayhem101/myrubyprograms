def convert(x)
  celcius = (5.0/9.0)*(x.to_f - 32)
  puts "#{x} F is #{format("%.2f",celcius)} C"
end

convert(99.45)
convert(100)

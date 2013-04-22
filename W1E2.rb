def split_by_new_line(input_string)
s_array=input_string.split(/\n/)
length=(s_array.length).to_s.length
s_array.each_with_index do |line,index|
  puts "Line #{format("%#{length}.f",index.next)} : #{line}"
  # puts "Line #{format("%.#{length}f",#{index.next} : #{line}"
 end
end

split_by_new_line("Welcome to the forum.\nHere you can learn Ruby.\nAlong with other members.\n")

def split_by_new_line(input_string)
line_out = ""
s_array=input_string.split(/\n/)
length=(s_array.length).to_s.length
s_array.each_with_index do |line,index|
  #puts "Line #{format("%#{length}.f",index.next)} : #{line}"
    line_out += "Line " + format("%#{length}.f",index.next) + " : " + "#{line}" + "\n"
    #puts line_out
    # puts "Line #{format("%.#{length}f",#{index.next} : #{line}"
 end
line_out
end

my_string = "This is line 1, originally.\nNow, this is line 2, at least originally.\nAnd one last line.\n" * 34
#puts my_string
puts split_by_new_line(my_string)

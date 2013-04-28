if File.exists?(ARGV[0]) && (ARGV.length) == 3
file = File.open(ARGV[0],"r+")
modified_lines = ""
file.readlines.each_with_index do |lines|
    words = lines.split(" ")
    words.each_with_index do |element,index|
      if element == ARGV[1]
        words[index] = "#{ARGV[2]} #{element}"
      end
    end
    modified_lines += words.join(" ") + "\n"
  end
  
  file.seek(0, IO::SEEK_SET)
  file.puts modified_lines.chomp!
  file.close
else
  puts "File doesnt exist or check you input must be of the form <program name> <filename> <word> <word to be inserted>"
end

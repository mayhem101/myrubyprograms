# Using the DIR class in Ruby#

#Display the current working directory
puts path = "#{Dir.pwd}"
# Create a new directory temp under working directory
Dir.mkdir("#{path}/tmp")
# change working directory to tmp
Dir.chdir("#{path}/tmp")
# display current directory
puts "#{Dir.pwd}"
# go back to current directory
Dir.chdir(path)
#delete tmp directory
Dir.delete("#{path}/tmp")

#This program converts celcius to kelvin and vice versa based off the users inputs

#method to convert CTF and FTC#
def convert(temp_value,conversion_type)
  if conversion_type.to_s == "FTC"
    5.0/9.0*(temp_value.to_f - 32)
  elsif converstion_type.to_s == "CTF"
    9.0/5.0*(temp_value.to_f) + 32
  end
end

puts "This program convers celcius to farenheiht and vice versa, please put your input in the following format, temperature,CTF(for celius to farenheight) or temperature,FTC (for farenheight to celcius) : "
user_input = gets.chomp!.split(",")

puts "Your input is not correct, please input as per the guideline" if user_input.length != 2

puts "You entered a temperature of #{user_input[0]} in F , the equivalent temperature in Celcius is #{convert(user_input[0],user_input[1])}" if user_input[1].to_s == "FTC"

puts "You entered a temperature of #{user_input[0]} in C , the equivalent temperature in Farenheight is #{convert(user_input[0],user_input[1])}" if user_input[1].to_s == "CTF"



def grandma_reply(greeting)
  if greeting == greeting.upcase
    year = (1930...1950).to_a
    "NO, NOT SINCE #{year[rand(year.size)]}"
  else
    "HUH?! SPEAK UP, SONNY!"
  end
end

greeting = ""
puts "THIS IS GRANDMA, ASK ME WHAT YOU WANT"
until greeting.chomp == "BYE" do
greeting = gets
puts grandma_reply(greeting) unless greeting.chomp == "BYE"
end


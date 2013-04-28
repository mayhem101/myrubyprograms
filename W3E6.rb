def grandma_reply(greeting)
  if greeting == greeting.upcase
    year = (1930...1950).to_a
    puts "NO, NOT SINCE #{year[rand(year.size)]}"
  else
    puts "HUH?! SPEAK UP, SONNY!"
  end
end

greeting = ""
puts "THIS IS GRANDMA, ASK ME WHAT YOU WANT"
while greeting.chomp != "BYE" do
greeting = gets
grandma_reply(greeting) if greeting.chomp != "BYE"
end


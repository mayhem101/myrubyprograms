class Grandma
  
  def initialize
    @deafness_level = 3
    @year_remember = (1930..1950).to_a
    end


  def talk_to_grandma
    greeting = ""
    puts "THIS IS GRANDMA, ASK ME WHAT YOU WANT"
    @count = 0
    until @count == @deafness_level do
      greeting = gets
      @count = greeting.chomp == "BYE" ? @count += 1 : 0
      puts @count == @deafness_level ?  grandma_bye : grandma_reply(greeting)
    end
  end

  def grandma_reply(greeting)
    greeting == greeting.upcase ? "NO, NOT SINCE #{(@year_remember[rand(@year_remember.length)])}" : "HUH?! SPEAK UP, SONNY!"
  end

  def grandma_bye
    "BYE SONNY, IF YOU WANT ME AGAIN JUST HOLLER GRANDMA,ELSE TYPE ANYTHING"
  end
  
end

call_grandma = Grandma.new
reply = ""
begin
call_grandma.talk_to_grandma
reply = gets.chomp
end while reply == "GRANDMA"

def quiz_stats(quiz_array)
  quiz = { attempts: 0 , nonattempts: 0}
  quiz_array.each do |element|
    element == 0 ? quiz[:nonattempts] += 1 : quiz[:attempts] += 1
  end
return quiz
end

quiz = [0,0,0,1,0,0,1,1,0,1]
data = quiz_stats(quiz)
puts "The number of participants who did not attempt Quiz 1 is #{data[:nonattempts]} out of #{data[:nonattempts]+data[:attempts]}"

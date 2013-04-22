def leap_year?(year_value)
  ((year_value % 100 == 0 && year_value % 400 == 0) || (year_value % 4 == 0 && year_value % 100 != 0))
end


def minutes_in_year(year)
  24 * 60 * (leap_year?(year) ? 366: 365)
end

puts "The number of minutes in year 2004 is  #{minutes_in_year(2004)} minutes"
puts "The number of minutes in year 2000 is  #{minutes_in_year(2000)} minutes"
puts "The number of minutes in year 1900 is  #{minutes_in_year(1900)} minutes"
puts "The number of minutes in year 2005 is  #{minutes_in_year(2005)} minutes"


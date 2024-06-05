puts "Start year?"
start_year = gets.chomp.to_i

puts "End year?"
end_year = gets.chomp.to_i

year = start_year
puts "Leap years between #{start_year} and #{end_year}:"

while year <= end_year do
  if year%4 == 0 && 
     (year%100 != 0 || year%400 == 0)
  then
    puts year.to_s
  end

  year += 1
end

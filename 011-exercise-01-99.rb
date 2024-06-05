number_of_bottles = 99

while true do
  puts "#{number_of_bottles} bottles of beer on the wall."
  puts "#{number_of_bottles} bottles of beer."
  puts "Take one down, pass it around,"
  
  number_of_bottles = number_of_bottles - 1

  if number_of_bottles == 1 then
    puts "#{number_of_bottles} bottle of beer on the wall."
    break
  else
    puts "#{number_of_bottles} bottles of beer on the wall."
    puts
  end
end

puts
puts "#{number_of_bottles} bottle of beer on the wall."
puts "#{number_of_bottles} bottle of beer."
puts "Take one down, pass it around,"
puts "No more bottles of beer on the wall."
puts
puts "No more bottles of beer on the wall,"
puts "no more bottles of beer."
puts "There's nothing else to fall,"
puts "because there's no more bottles of beer on the wall."

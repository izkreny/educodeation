number_of_bottles = 5

while true
  puts "#{number_of_bottles} bottles of beer on the wall, " +
    "#{number_of_bottles} bottles of beer."
  
  number_of_bottles = number_of_bottles - 1

  if number_of_bottles == 1
    puts "Take one down, pass it around, " +
      "#{number_of_bottles} bottle of beer on the wall.\n\n"
    break
  else
    puts "Take one down, pass it around, " +
      "#{number_of_bottles} bottles of beer on the wall.\n\n"
  end
end

puts "#{number_of_bottles} bottle of beer on the wall, " +
  "#{number_of_bottles} bottle of beer."
puts "Take one down, pass it around, " +
  "no more bottles of beer on the wall.\n\n"
puts "No more bottles of beer on the wall, " +
  "no more bottles of beer."
puts "There's nothing else to fall, " +
  "because there's no more bottles of beer on the wall."

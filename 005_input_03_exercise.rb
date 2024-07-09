puts "First name:"
name = gets.chomp

puts "Last name:"
surname = gets.chomp

puts "Hi #{name + " " + surname}!"

puts "What is your favorite number?"
favorite_number = gets.chomp.to_i

puts "Are you sure it is not #{favorite_number + 1}?"

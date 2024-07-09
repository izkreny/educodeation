puts "Hello, what's your name? (hint: Nemo)"
name = gets.chomp
puts "Hello, #{name}."

if name == "Nemo" then
  puts "Are you some kind of captain?"
end

puts

puts "I am fortune-teller. Tell me your name: (hint: Nemo)"
name = gets.chomp

if name == "Nemo" then
  puts "I see great adventures ahead!"
else
  puts "Your is future murky... :-("
end

puts

puts "Write some random integer number:"
number = gets.chomp.to_i

if number > 0 then
  puts "#{number} is greater then ZERO!"
elsif number < 0 then
  puts "#{number} is smaller then ZERO!"
else
  puts "#{number} is equal to ZERO!"
end

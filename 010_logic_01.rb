puts "Hello, what's your name? (hint: Ko or La)"
name = gets.chomp
puts "Hello, #{name}."

if name == "Ko" || name == "La" then
  puts "What a lovely name!"
end

puts

puts true  || true
puts true  || false
puts false || true
puts false || false

puts

puts true  && true
puts true  && false
puts false && true
puts false && false

puts

puts !true
puts !false

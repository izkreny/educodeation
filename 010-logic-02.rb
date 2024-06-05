while true do
  puts "What would you like to ask C to do?"
  request = gets.chomp

  puts "You say: C, please #{request}."

  puts "C responds:"
  puts "  C #{request}."
  puts "  Papa #{request}, too."
  puts "  Mama #{request}, too."
  puts "  Ruby #{request}, too."
  puts

  break if request.downcase == "stop"
end

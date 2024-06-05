puts "Type as many words you want, one word per line."
puts "(hit ENTER twice for the exit)"
words = []

while true do
  word = gets.chomp

  break if word == "" 
  words.push(word)
end

puts "TA-DAA, sorted words:"
puts words.sort

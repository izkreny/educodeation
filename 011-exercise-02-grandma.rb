puts "Say something to your Grandma:"
bye_counter = 0

while bye_counter < 3
  input = gets.chomp

  if input == "BYE"
    bye_counter = bye_counter + 1
  else
    bye_counter = 0
  end

  if input == input.upcase
    puts "NO, NOT SINCE #{rand(1930..1950)}!"
  else
    puts "HUH?! SPEAK UP, SONNY!"
  end
end

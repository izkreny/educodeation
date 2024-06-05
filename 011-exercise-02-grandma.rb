puts "Say something to your Grandma:"
bye_counter = 0

while bye_counter < 3 do
  input = gets.chomp

  if input == "BYE" then
    bye_counter = bye_counter + 1
  else
    bye_counter = 0
  end

  if input == input.upcase then
    puts "NO, NOT SINCE #{rand(1930..1950)}!"
  else
    puts "HUH?! SPEAK UP, SONNY!"
  end
end

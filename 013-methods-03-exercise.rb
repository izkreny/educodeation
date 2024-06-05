def ask_for_winner(match)
  puts "Which flavor you like more?"
  puts "1. " + match[0].capitalize
  puts "2. " + match[1].capitalize

  while true do
    answer = gets.chomp.downcase
    if (answer == "1" || answer == "2")
      return match[answer.to_i - 1]
    else
      puts "Please answer '1' or '2'. Thx."
    end
  end
end

def round(flavors, round_number)
  flavors_shortlist = []
  match_number = 1
  number_of_flavors = flavors.length

  if number_of_flavors % 2 == 0 then
    counter = number_of_flavors - 1
  else
    flavors_shortlist.push(flavors[number_of_flavors - 1])
    counter = number_of_flavors - 2
  end

  while counter >= 0 do
    puts
    if number_of_flavors == 2 then
      puts "FINAL MATCH!"
    else
      puts "ROUND #{round_number}, MATCH #{match_number}"
    end

    match = [
      flavors[counter], 
      flavors[counter - 1]
    ]
    flavors_shortlist.push(ask_for_winner(match))
    match_number += 1
    counter -= 2
  end
  
  return flavors_shortlist
end

flavors = [
  "vanilla",
  "chocolate",
  "rhubarb",
  "pistachio",
  "spumoni",
  "green tea",
  "strawberry"
]
round_number = 1

puts "Welcome to THE ULTIMATE FLAVOR TOURNAMENT!"

while true do
  flavors = round(flavors, round_number)

  if flavors.length == 1 then
    puts
    puts "And the ultimate Flavor Champion is:"
    puts flavors.last.upcase + "!!!"
    break
  else
    round_number += 1
  end
end

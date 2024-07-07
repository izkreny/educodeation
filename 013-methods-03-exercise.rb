def ask_for_winner(match)
  puts "Which flavor you like more?"
  puts "1. " + match[0].capitalize
  puts "2. " + match[1].capitalize

  loop do
    answer = gets.chomp.downcase
    if (answer == "1" || answer == "2")
      return match[answer.to_i - 1]
    else
      puts "Please answer '1' or '2'. Thx."
    end
  end
end

def round(flavors, round_number)
  winners = []
  match_number = 1
  flavor_id = 0

  while flavor_id < flavors.length - 1
    if flavors.length == 2
      puts "\nFINAL MATCH!"
    else
      puts "\nROUND #{round_number}, MATCH #{match_number}"
    end

    match = [
      flavors[flavor_id], 
      flavors[flavor_id + 1]
    ]
    winners.append(ask_for_winner(match))

    match_number += 1
    flavor_id += 2
  end

  winners.append(flavors.pop) if flavors.length % 2 != 0
  
  return winners
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
loop do
  if flavors.length == 1
    puts "\nAnd the ultimate Flavor Champion is:"
    puts flavors.last.upcase + "!!!"
    break
  else
    flavors = round(flavors, round_number)
    round_number += 1
  end
end

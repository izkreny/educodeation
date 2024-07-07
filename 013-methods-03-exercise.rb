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
  flavors_shortlist = []
  match_number = 1

  flavors_shortlist.append(flavors.pop) if flavors.length % 2 != 0
  counter = flavors.length

  while counter > 0
    puts
    if flavors.length == 2 && flavors_shortlist.empty?
      puts "FINAL MATCH!"
    else
      puts "ROUND #{round_number}, MATCH #{match_number}"
    end

    match = [
      flavors[counter - 1], 
      flavors[counter - 2]
    ]

    flavors_shortlist.append(ask_for_winner(match))
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

loop do
  flavors = round(flavors, round_number)

  if flavors.length == 1
    puts
    puts "And the ultimate Flavor Champion is:"
    puts flavors.last.upcase + "!!!"
    break
  else
    round_number += 1
  end
end

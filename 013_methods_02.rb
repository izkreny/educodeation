def say_moo(repeat_number = 1)
  puts "moooooo..." * repeat_number
end

say_moo(3)
puts "oink-oink"

# ArgumentError
say_moo

moo_return = say_moo(2)
puts "And say_moo(2) method returns: #{moo_return}"

puts

def double_this(number)
  number_times_2 = number * 2
  puts "#{number} doubled is #{number_times_2}"
end

double_this(44)

puts

untouchable_var = "Can't touch this!"

def little_pest(untouchable_var)
  untouchable_var = "I Can!"
  puts untouchable_var
end

little_pest(untouchable_var)
puts untouchable_var

puts

def favorite_food(name)
  return "Smeće" if name == "vrana"
  return "Puž" if name == "patka"
  return "...neam pojma..."
end

def favorite_drink(name)
  if name == "Hemingway" then
    "Whiskey"
  elsif name == "Einstein" then
    "Black tea"
  else
    "...perhaps milk?"
  end
end

puts favorite_food("vrana")
puts favorite_food("patka")
puts favorite_food("pas")
puts favorite_drink("Q")
puts favorite_drink("Einstein")
puts favorite_drink("Hemingway")

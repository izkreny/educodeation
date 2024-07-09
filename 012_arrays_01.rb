flower = "rose"
array = [90, flower, [true, false]]
puts array
puts
flower = "neven"
# array = [90, flower, [true, false]]
puts array

puts

gems = ["Perl", "Garnet", "Amethyst"]

puts gems
puts
puts gems[0]
puts gems[1]
puts gems[2]
puts gems[3]

puts

other_gems    = []
other_gems[3] = "Ruby"
other_gems[0] = "Pink Diamond"
other_gems[2] = "Sapphire"
other_gems[0] = "Rose Quartz"
puts other_gems

puts

languages = ["English", "Norwegian", "Ruby"]

languages.each do |lang|
  puts "I love #{lang}! Don't you?"
end

puts "And let's hear it for Fortran!"
puts "<crickets chirp in the distance>"

puts

3.times do
  puts "Hip-Hip-Hooray!"
end

puts

foods = ["bread", "cheese", "špek"]

puts foods
puts
puts foods.to_s
puts
puts foods.join(", ")
puts
puts foods.join(" :) ") + " 8)"

200.times do
  puts []
end

puts

favorites = []
favorites.push("raindrops on roses")
favorites.push("whiskey on kittens")

puts favorites[0]
puts favorites.last
puts favorites.length


puts favorites.pop
puts favorites
puts favorites.length

array = []
hash = {}

array[0] = "1"
array[1] = "2"
array[2] = "3"
array[3] = "4"
hash["A"] = "1"
hash["B"] = "2"
hash["C"] = "3"
hash["D"] = "4"

array.each do |num|
  puts(num)
end

hash.each do |key, num|
  puts("#{key}: #{num}")
end

greetings = ["hello", "you"]
fruit_colors = {
  "apple" => "green",
  "grape" => "purple"
}

puts(greetings)
puts(fruit_colors)
puts(fruit_colors["apple"])

weird_hash = Hash.new

weird_hash[6] = "666"
weird_hash[[]] = "VOID"
weird_hash[Time.now] = "What is the time?!"

puts(weird_hash[[]])

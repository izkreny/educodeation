numbers = 1..5
puts([1, 2, 3, 4, 5] == numbers.to_a)

("a".."z").each do |letter|
  print(letter)
end
puts("")

nineties = 1990..1999
puts(nineties.min)
puts(nineties.max)
puts(nineties.include?(1990))
puts(nineties.include?(2000))
puts(nineties.include?(1995.5))


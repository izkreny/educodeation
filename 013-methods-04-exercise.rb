def to_roman(number, type = "new")
  numerals = [
    [ "M", 1000],
    ["CM",  900],
    [ "D",  500],
    ["CD",  400],
    [ "C",  100],
    ["XC",   90],
    [ "L",   50],
    ["XL",   40],
    [ "X",   10],
    ["IX",    9],
    [ "V",    5],
    ["IV",    4],
    [ "I",    1]
  ]
  step = type == "old" ? 2 : 1
  roman_numeral = ""
  element = 0

  while number > 0 do
    roman_numeral += numerals[element][0] * (number / numerals[element][1])
    number %= numerals[element][1]
    element += step
  end

  return roman_numeral
end

puts "Write some western civilization number:"
number = gets.chomp.to_i
raise "Please write number greather than 0 and smaller than 4000" \
  if number <= 0 || number >= 4000
puts "Old romans would wrote #{number} as #{to_roman(number, "old")}"
puts "New romans would wrote #{number} as #{to_roman(number, "new")}"

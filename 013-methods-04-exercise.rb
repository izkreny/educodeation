def roman_num_old(number)
  numerals = [
    ["M", 1000],
    ["D",  500],
    ["C",  100],
    ["L",   50],
    ["X",   10],
    ["V",    5],
    ["I",    1]
  ]
  roman_numeral = ""
  element = 0

  while number > 0 do
    repeat_number = number / numerals[element][1]
    roman_numeral += numerals[element][0] * repeat_number

    number = number % numerals[element][1]
    element += 1
  end

  return roman_numeral
end

# TODO: This is not working, for example for number 94
def roman_num_new(number)
  numerals = [
    ["M", 1000],
    ["D",  500],
    ["C",  100],
    ["L",   50],
    ["X",   10],
    ["V",    5],
    ["I",    1]
  ]
  roman_numeral = ""
  element = 0

  while number > 0 do
    repeat_number = number / numerals[element][1]
    number = number % numerals[element][1]

    if numerals[element][0] != "M" &&
       repeat_number == 4
    then
      if roman_numeral[-1] != numerals[element - 1][0]
      then
        roman_numeral = roman_numeral.chop +
          numerals[element][0] +
          numerals[element - 1][0]
      else
        roman_numeral = roman_numeral.chop +
          numerals[element][0] +
          numerals[element - 2][0]
      end
    else
      roman_numeral += numerals[element][0] * repeat_number
    end

    element += 1
  end

  return roman_numeral
end

puts "Write some western civilization number:"
number = gets.chomp.to_i
puts "Old romans would wrote #{number} as #{roman_num_old(number)}"
puts "New romans would wrote #{number} as #{roman_num_new(number)}"

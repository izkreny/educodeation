def print_integer(roman)
  romans = {
     "M" => 1000,
     "D" =>  500,
     "C" =>  100,
     "L" =>   50,
     "X" =>   10,
     "V" =>    5,
     "I" =>    1
  }

  decimal_number = 0
  previous_decimal_value = 0
  roman.upcase.reverse.each_char do |char|
    if !romans.include?(char)
      puts("#{roman} is not a valid roman numeral!")
      exit
    end

    decimal_value = romans[char]
    if decimal_value < previous_decimal_value
      decimal_value *= -1
    else
      previous_decimal_value = decimal_value
    end

    decimal_number += decimal_value
  end

  puts("We write #{roman.upcase} as #{decimal_number} today.")
end

def to_integer_old(roman_numeral)
  roman_numerals_mix = {
    "CM" =>  900,
    "CD" =>  400,
    "XC" =>   90,
    "XL" =>   40,
    "IX" =>    9,
    "IV" =>    4
  }
  roman_numerals_solo = {
     "M" => 1000,
     "D" =>  500,
     "C" =>  100,
     "L" =>   50,
     "X" =>   10,
     "V" =>    5,
     "I" =>    1
  }
  result = 0

  roman_numerals_mix.each do |roman, decimal|
    while roman_numeral.include?(roman)
      result += decimal
      roman_numeral.sub!(roman, "")
    end
  end

  roman_numerals_solo.each do |roman, decimal|
    result += roman_numeral.count(roman) * decimal
      roman_numeral.gsub!(roman, "")
  end

  if roman_numeral.empty?
    return result
  else
    return ">>> Not a roman number!!! <<<"
  end
end

puts("Write some roman number:")
print_integer(gets.chomp)

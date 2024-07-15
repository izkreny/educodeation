require 'date'

class Date
  def days_until_next
    today = Date.today
    date = Date.new(today.year, self.month, self.day)
    date = date.next_year if today > date
    
    return (date - today).to_i
  end

  def days_between(date = Date.today)
    (self - date).to_i.abs
  end

  def years_past
    today = Date.today

    years = today.year - self.year
    years -= 1 if (today > self &&
                (today.month < self.month ||
                (today.month == self.month && today.day < self.day)))
    years += 1 if (today < self &&
                (today.month > self.month ||
                (today.month == self.month && today.day > self.day)))

    return years
  end
end

class Integer
  def to_roman(type = "new")
    raise "Please write number greather than 0 and smaller than 4000" \
      if self <= 0 || self >= 4000
    
    number = self
    roman_numeral = ""
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
    element = 0
    while number > 0 do
      roman_numeral += numerals[element][0] * (number / numerals[element][1])
      number %= numerals[element][1]
      element += step
    end

    return roman_numeral
  end
end

class String
  def roman_to_i
    decimal_number = 0
    previous_decimal_value = 0
    romans = {
       "M" => 1000,
       "D" =>  500,
       "C" =>  100,
       "L" =>   50,
       "X" =>   10,
       "V" =>    5,
       "I" =>    1
    }
    
    self.upcase.reverse.each_char do |char|
      raise "#{self} is not a valid roman number!" if !romans.include?(char)
      decimal_value = romans[char]
      if decimal_value < previous_decimal_value
        decimal_value *= -1
      else
        previous_decimal_value = decimal_value
      end
      decimal_number += decimal_value
    end

    return decimal_number
  end
end

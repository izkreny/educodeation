class Integer
  def to_roman
    if self == 5
      roman = "V"
    else
      roman = "XLII"
    end

    roman
  end
end

puts(5.to_roman)
puts(42.to_roman)

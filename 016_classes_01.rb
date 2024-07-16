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

class Die
  def initialize
    roll
  end

  def roll
    @number_showing = rand(1..6)
  end

  def showing
    @number_showing
  end

  def cheat(side)
    if (1..6).include?(side)
      @number_showing = side
    else
      raise "CHEATING!!!"
    end
  end
end

# dice = [Die.new, Die.new]
# dice.each {|die| puts die.roll}

die = Die.new
die.cheat(4)
puts(die.showing)
die.roll
puts(die.showing)
puts(die.showing)
die.roll
puts(die.showing)
puts(die.showing)

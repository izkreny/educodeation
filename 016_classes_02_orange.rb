class OrangeTree
  def initialize
    @meters_tall = 0
    @years_old = 0
    @oranges_count = 0
  end

  def height
    return @meters_tall
  end

  def count_the_oranges
    return @oranges_count
  end

  def one_year_passes
    @years_old += 1
    @meters_tall += 1
    puts("One year passed...")

    if too_old?
      puts("...and the Orange tree, " +
           "#{@meters_tall} meters tall, " +
           "slowly dies after #{@years_old} years...")
      exit
    else
      puts("...and the Orange tree is #{@years_old} years old " +
           "and #{@meters_tall} meters tall!")
    end

    if mature?
      @oranges_count = 10 * @years_old
      puts("This year tree produced #{@oranges_count} oranges!")
    else
      puts("But not old enough to produce oranges. :-|")
    end
  end

  def pick_an_orange
    if @oranges_count > 0
      @oranges_count -= 1
      return "It was deeelicious!"
    else
      return "Unfortunatelly, there are no oranges left to pick..."
    end
  end

  private
  def mature?
    @years_old >= 2
  end

  def too_old?
    @years_old >= 12
  end
end

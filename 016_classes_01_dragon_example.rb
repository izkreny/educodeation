class Dragon
  def initialize(name)
    @name = name
    @asleep = false
    @stuff_in_belly = 10
    @stuff_in_intestine = 0

    puts("#{@name} is born!")
  end

  def name
    return @name
  end

  def feed
    puts("You feed #{@name}.")
    @stuff_in_belly = 10
    passage_of_time
  end

  def walk
    puts("You walk #{@name}.")
    @stuff_in_intestine = 0
    passage_of_time
  end

  def put_to_bed
    puts("You put #{@name} to bed...")
    @asleep = true
    3.times do
      if @asleep
        passage_of_time
      end
      if @asleep
        puts("#{@name} snores, filling the room with smoke...")
      end
    end
    if @asleep
      @asleep = false
      puts("#{@name} wakes up slowly...")
    end
  end

  def toss
    puts("You toss #{@name} up into the air.")
    puts("#{@name} giggles, which singes your eyebrows.")
    passage_of_time
  end

  def rock
    puts("You rock #{@name} gently.")
    @asleep = true
    puts("#{@name} briefly dozes off...")
    passage_of_time
    if @asleep
      @asleep = false
      puts("...but wakes when you stop.")
    end
  end

  def status
    puts("#{@name}'s belly:     [" +
         "#{"*" * @stuff_in_belly}" +
         "#{"." * (10 - @stuff_in_belly)}]")
    puts("#{@name}'s intestine: [" +
         "#{"*" * @stuff_in_intestine}" +
         "#{"." * (10 - @stuff_in_intestine)}]")
  end


  private
  def hungry?
    @stuff_in_belly <= 2
  end

  def poopy?
    @stuff_in_intestine >= 8
  end

  def passage_of_time
    if @stuff_in_belly > 0
      @stuff_in_belly -= 1
      @stuff_in_intestine += 1
    else
      if @asleep
        @asleep = false
        puts("#{@name} wakes up suddenly!")
      end
      puts("#{@name} is starving! In desperation, #{@name} ate YOU!")
      exit
    end

    if @stuff_in_intestine >= 10
      @stuff_in_intestine = 0
      puts("Whoops! #{@name} had an accident...")
    end

    if hungry?
      if @asleep
        @asleep = false
        puts("#{@name} wakes up suddenly!")
      end
      puts("#{@name}'s stomach grumbles...")
    end

    if poopy?
      if @asleep
        @asleep = false
        puts("#{@name} wakes up suddenly!")
      end
      puts("#{@name} does the potty dance...")
    end
  end
end

class DragonApp
  def initialize
    puts(">> What is the name of your dragon?")
    @dragon = Dragon.new(gets.chomp)
    @show_status = true
    @menu = [
      "[F]eed",
      "[W]alk",
      "[S]leep",
      "[T]oss",
      "[R]ock",
      "[E]xit"
    ]
  end

  def show_menu
    puts(">> What do you want to do with #{@dragon.name}?")
    @menu.each do |item|
      puts(">>   #{item}")
    end
    if @show_status
      puts(">>   [H]ide status")
      @dragon.status
    else
      puts(">>   S[h]ow status")
    end
    print(">> Just type appropriate letter and press ENTER: ")
  end

  def get_response
    command = gets.chomp.upcase
    case command
    when "F"
      @dragon.feed
    when "W"
      @dragon.walk
    when "S"
      @dragon.put_to_bed
    when "T"
      @dragon.toss
    when "R"
      @dragon.rock
    when "E"
      exit
    when "H"
      @show_status = !@show_status
    else
      puts(">> Invalid letter! Please try again.")
    end
  end
end

def main
  app = DragonApp.new
  loop do
    app.show_menu
    app.get_response
  end
end

main

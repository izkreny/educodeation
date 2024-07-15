require './library.rb'

def main
  bdays = {}

  File.read('015_classes_05_exercise_02.csv').each_line do |line|
    line_elements = line.chomp.strip.split(',')
    fulname = line_elements[0].strip
    bdays[fulname] = Date
      .strptime(
        line_elements[1].strip + ", " +
        line_elements[2].strip, '%b %d, %Y'
      )
  end

  puts(bdays)

  print("Please write a fulname of your friend: ")
  fulname = gets.chomp

  if bdays.include?(fulname)
    bday = bdays[fulname]
    puts("Your friend #{fulname} was born on " +
         "#{bday.strftime('%B %e, %Y')}, and for")
    puts("exactly #{bday.days_until_next} day(s) he is going to be " +
         "#{bday.years_past + 1} years old.")
  else
    puts("Sorry, no record for #{fulname} :-(")
  end
end

main()

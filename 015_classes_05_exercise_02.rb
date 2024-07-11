require 'date'

def days_till_next(b_day)
  today = Date.today
  b_day = Date.parse(today.year.to_s + b_day[4...])
  days = 0
  
  while today < b_day
    today += 1
    days += 1
  end

  return days
end

def years_old(b_day)
  today = Date.today
  b_day = Date.parse(b_day)

  age = today.year - b_day.year
  age -= 1 if (today.month < b_day.month ||
              (today.month == b_day.month && today.day < b_day.day))

  return age
end


b_days = {}

File.read('015_classes_05_exercise_02.csv').each_line do |line|
  line_elements = line.chomp.strip.split(',')
  fulname = line_elements[0].strip
  b_year = line_elements[2].strip.to_i
  b_month = Date::ABBR_MONTHNAMES.index(line_elements[1].strip.split(' ')[0]).to_i
  b_day = line_elements[1].strip.split(' ')[1].to_i
  b_days[fulname] = Date.new(b_year, b_month, b_day).strftime
end

# puts(b_days)

print("Please write a fulname of your friend: ")
fulname = gets.chomp

if b_days.include?(fulname)
  b_day = b_days[fulname]
  puts("Your friend #{fulname} was born on " +
       "#{Date.parse(b_day).strftime('%B %e, %Y')}, and for")
  puts("exactly #{days_till_next(b_day)} day(s) he is going to be " +
       "#{years_old(b_day) + 1} years old.")
else
  puts("Sorry, no record for #{fulname} :-(")
end

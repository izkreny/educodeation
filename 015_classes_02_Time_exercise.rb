today = Time.now
puts("Please do tell a year (YYYY) that you are born to:")
birth_year = gets.chomp.to_i
puts("Please do tell a month (1-12) that you are born to:")
birth_month = gets.chomp.to_i
puts("Please do tell a day in a monthy (1-31) that you are born to:")
birth_day = gets.chomp.to_i


age = today.year - birth_year

age -= 1 if (today.month < birth_month ||
   (today.month == birth_month && today.day < birth_day))

puts("X"*age)

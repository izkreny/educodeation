puts "WHAT DO YOU WANT?!?"
answer = gets.chomp
puts "WHADDAYA MEAN \"#{answer.upcase}\"?!?"
puts "YOU ARE FIRED!!!"

puts

line_width = 50
puts(   "Table of Contents".center(line_width))
puts
puts(  "Chapter 1: Numbers".ljust(line_width/2) + "page 1".rjust(line_width/2))
puts(  "Chapter 2: Letters".ljust(line_width/2) + "page 5".rjust(line_width/2))
puts("Chapter 3: Variables".ljust(line_width/2) + "page 9".rjust(line_width/2))

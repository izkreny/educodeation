puts("hello ".+("world"))
puts((10.*(9)).+(9))

puts

puts self

puts

var1 = "stop"
var2 = "deliver repaid desserts"
var3 = "....TCELES B HSUP - A magic spell?"

puts var1.reverse
puts var2.reverse
puts var3.reverse
puts var1
puts var2
puts var3

puts

puts "What is your name?"
name = gets.chomp
puts "What is your surname?"
surname = gets.chomp
puts "Did you know there are #{name.length + surname.length} characters in your name, #{name + " " + surname}?"

puts

letters = "aAbBcCdDeE"
puts letters.upcase
puts letters.downcase
puts letters.swapcase
puts letters.capitalize
puts " a".capitalize
puts letters

puts

line_width = 50
puts(                "Old Mother Hubbard".center(line_width))
puts(               "Sat in her cupboard".center(line_width))
puts(        "Eating her curds and whey,".center(line_width))
puts(          "When along came a spider".center(line_width))
puts(           "Who sat down beside her".center(line_width))
puts("And scared her poor shoe dog away.".center(line_width))

puts

str = "==> text <=="
puts(str.ljust(line_width))
puts(str.center(line_width))
puts(str.rjust(line_width))
puts(str.ljust(line_width/2) + str.rjust(line_width/2))
puts str

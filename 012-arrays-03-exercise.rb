title = "Table of Contents"
chapters = [[1, "Numbers",   1],
            [2, "Letters",   5],
            [3, "Variables", 9]]

puts title.center(50)

chapters.each do |chapter|
  number = chapter[0]
  name   = chapter[1]
  page   = chapter[2]

  left  = "Chapter #{number}: #{name}"
  right = "page #{page}"

  puts left.ljust(30) + right.rjust(20)
end

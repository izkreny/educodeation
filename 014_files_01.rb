filename = "014-files-01.txt"
test_string = "I promise thta I swear absolutely that " +
              "I will never mention gazpacho soup again."

File.open(filename, "w") do |file|
  file.write(test_string)
end

read_string = File.read(filename)

puts(test_string == read_string)

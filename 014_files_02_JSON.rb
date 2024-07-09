#Require JSON
require "json"

def json_save(object,filename)
  File.open(filename, "w") do |file|
    file.write(object.to_json)
  end
end

def json_load(filename)
  json_string = File.read(filename)
  return JSON.parse(json_string)
end

filename = "JSON_nums.txt"
array = ["One",
         "Two",
         "Three"]

json_save(array, filename)
read_array = json_load(filename)
puts(read_array == array)

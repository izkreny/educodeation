require 'net/http'
require 'json'

url = URI('https://official-joke-api.appspot.com/jokes/programming/random')

response = Net::HTTP.get(url)
joke = JSON.parse(response)

puts(joke[0]['setup'])
gets
puts(joke[0]['punchline'])

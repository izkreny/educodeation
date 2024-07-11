time = Time.now
soon = time + 3600 # One hour later (in seconds)

puts(time)
puts(soon)

puts(Time.new(2000, 1, 1))
birth_time = Time.new(1983, 9, 5, 18, 30)

puts("One billion seconds later: #{birth_time + 10**9}")

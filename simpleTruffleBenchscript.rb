5.times.each do |times|
beginning_time = Time.now
a = 0
b = 0
c = 0
d = 0
(1..1_000_000).each do |i| 
  a += (i >> 24) & 0xFF
  b += (i >> 16) & 0xFF
  c += (i >> 8) & 0xFF
  d += i & 0xFF
end
end_time = Time.now
puts "Time elapsed #{(end_time - beginning_time)*1000} milliseconds"
puts a
puts b
puts c
puts d
end

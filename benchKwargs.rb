a = 0
b = 0
c = 0
d = 0
def kwargsM(i:)
  (i >> 24) & 0xFF
  (i >> 16) & 0xFF
  (i >> 8) & 0xFF
  i & 0xFF
end


5.times.each do |times|
  beginning_time = Time.now
  (1..100_000).each do |i|
    d += kwargsM i:i
  end
  end_time = Time.now
  puts "Time elapsed %8.3f milliseconds" % ((end_time - beginning_time)*1000)
end

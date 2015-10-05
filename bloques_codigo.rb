def test
   yield 5, 10
   puts "You are in the method test"
   yield 100, 20
end
test {|i, j| puts "You are in the block #{i} #{j}"}

def my_name
  puts "Mi nombre"
  yield 
end
my_name{puts "jonathan"}

def measure_time
  start_time = Time.now
  yield 
  finish_time = Time.now
  finish_time - start_time
end

puts(measure_time do
  var = []
  10000000.times { var.push 10 }
end)

puts(measure_time do 
  sleep 2
end)
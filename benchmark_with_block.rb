def benchmark
  start_time = Time.now
  yield # This will execute the block of code passed to the method.
  end_time = Time.now
  
  running_time = end_time - start_time
  running_time
end

# Be careful, pasting this into IRB will take a long time to print.
# It's a loooong string. :)
long_string = "apple"*100000000
 
running_time = benchmark { long_string.reverse }
 
puts "string.reverse took #{running_time} seconds to run"
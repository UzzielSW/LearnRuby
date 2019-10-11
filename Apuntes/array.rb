arr = [5, "Dave", 15.88, false]
arr << 8

for i in (0...arr.length)
    puts "elemento #{i+1}: #{arr[i]} "
end
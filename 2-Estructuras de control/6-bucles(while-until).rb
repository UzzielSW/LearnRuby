num = 0

# bucle while es ejecutado mientras su condicion sea true

while num <= 12
	puts "2 x #{num} = #{2*num}"
	num+=1
end

# bucle until es ejecutado mientras su condicion sea false

puts ""
num=0
until num > 12
	puts "3 x #{num} = #{3*num}"
	num+=1
end
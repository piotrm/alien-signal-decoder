def decode(msg)
  result = []
	index = 0
	acc = 0

 	msg.split(/,/).each do |elem|
		if(elem.match(/\d/))
			acc+=elem.to_i
		else
			result[index-1]=elem
			acc=0
		end

		index = acc
	end

	result.join
end

lines = []

File.open("input").each{|line| lines.push(line.strip)}

lines.each do |l|
  puts decode(l)	
end

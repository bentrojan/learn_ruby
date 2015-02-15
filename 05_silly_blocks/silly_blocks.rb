def reverser &a_block
	str = a_block.call
	if str.include? " "
		str = str.split(" ")
		result = []
		str.each do |i|
			result.push(i.reverse)
		end
		return result.join(" ")
	else
		return str.reverse 
	end
end

def adder num=1, &a_block
	a_block.call + num
end

def repeater num=1, &a_block
	num.times do 
		a_block.call
	end
end

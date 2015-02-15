def echo(str)
	str
end

def shout(str)
	str.upcase
end

def repeat(str, num=2)
	rslt = []	
	num.times do
		rslt.push(str)
	end
	rslt.join(" ")
end

def start_of_word(str, num)
	str[0, num]
end

def first_word(str)
	str.split(" ").first
end

def titleize(str)
	prep = ["a", "for", "but", "an", "and",
			"the", "to", "at", "in", "by", "into", "up",
			"over", "under", "upon", "atop", "below", "above"]
	if str.include? " "
		ans = []
		str=str.split(" ") 
		str.each do |i|
			if !(prep.include? i)
				ans.push(i.capitalize)
			else 
				ans.push(i)
			end
		end	
		ans[0] = ans[0].capitalize
		return ans.join(" ")
	else
		return str.capitalize
	end
end
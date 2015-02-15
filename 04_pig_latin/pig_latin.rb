def translate(str)
	
	if str.include? " "
		str=str.split(" ")
		ans = []
		str.each do |i|
			ans.push(word(i))
		end
		return ans.join(" ")
	else
		return word(str)
	end
end

def word(str)
	a = str.index(/[aeiou]/) 
	if a == 0
		return "#{str}ay"
	elsif (str[a-1] == "q")
		return "#{str[a+1, str.length-1]}#{str[0,a+1]}ay"
	else
		return "#{str[a, str.length-1]}#{str[0, a]}ay"
	end
end
class Book

	attr_accessor :title

	def titleize 
		str = @title 
		prep = ["a", "for", "but", "an", "and", "of",
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

	def title
		@title = titleize
	end

end

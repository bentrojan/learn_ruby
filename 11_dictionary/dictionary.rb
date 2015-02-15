class Dictionary

	def initialize
		@book = {}
	end

	def add(entry)
		if entry.class == Hash
			entry.each do |k, v|
				@book[k] = v
			end
		elsif entry.class == String
			@book[entry] = nil
		else
			return "error error"
		end
	end

	def entries
		@book
	end

	def keywords
		@book.keys.sort
	end

	def include?(k)
		@book.has_key?(k)
	end

	def find(pre)
		ans = {}
		@book.each do |k, v|
			if k.to_s.include?(pre)
				ans[k] = v
			end
		end
		ans
	end

	def printable
		str = ''
		@book.sort.each do |k, v|
			str = str + %Q{[#{k}] "#{v}"} + "\n"
		end
		str.strip
	end

end

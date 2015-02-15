class RPNCalculator

	def initialize
		@nums = []
	end

	def push n
		@nums.push(n)
	end

	def plus
		if @nums[0] == nil
			raise "calculator is empty"
		end
		@nums[-2] = @nums[-2] + @nums[-1]
		@nums.pop
	end

	def minus
		if @nums[0] == nil
			raise "calculator is empty"
		end
		@nums[-2] = @nums[-2] - @nums[-1]
		@nums.pop
	end

	def divide
		if @nums[0] == nil
			raise "calculator is empty"
		end
		@nums[-2] = @nums[-2].to_f / @nums[-1].to_f
		@nums.pop
	end

	def times
		if @nums[0] == nil
			raise "calculator is empty"
		end
		@nums[-2] = @nums[-2].to_f * @nums[-1].to_f
		@nums.pop
	end

	def evaluate str
		list = tokens str
		@nums = []
		list.each do |i|
			if i == :+
				plus
			elsif i == :-
				minus
			elsif i == :*
				times
			elsif i == :/
				divide
			elsif i == "0"
				@nums.push(i.to_i)
			else
				@nums.push(i.to_i)
			end
		end
		value
	end

	def tokens str
		token = str.split(" ")
		array = []
		token.each do |i|
			if i == "+"
				array.push(:+)
			elsif i == "-"
				array.push(:-)
			elsif i == "*"
				array.push(:*)
			elsif i == "/"
				array.push(:/)
			elsif i == "0"
				array.push(i.to_i)
			else
				array.push(i.to_i)
			end
		end
		array
	end

	def value
		@nums[-1]
	end

end
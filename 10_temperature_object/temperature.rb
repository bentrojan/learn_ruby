class Temperature 

	def initialize(options)
		if options[:f] == nil
			@temp = {:c => options[:c]}
		elsif options[:c] == nil
			@temp = {:f => options[:f]}
		else
			return "Terror error!"
		end
	end

	def in_celsius
		if @temp[:f] == nil
			return @temp[:c]
		else
			return ftoc(@temp[:f])
		end
	end

	def in_fahrenheit
		if @temp[:c] == nil
			return @temp[:f]
		else
			return ctof(@temp[:c])
		end
	end

	def ftoc(f)
		(f.to_f-32.0)*5.0/9.0
	end

	def ctof(c)
		(c.to_f*9.0/5.0)+32.0
	end

	def self.from_celsius(deg)
		Temperature.new({:c => deg})
	end

	def self.from_fahrenheit(deg)
		Temperature.new({:f => deg})
	end

end


class Celsius < Temperature
	def initialize deg
		@temp = {:c => deg}
	end
end


class Fahrenheit < Temperature
	def initialize deg
		@temp = {:f => deg}
	end
end








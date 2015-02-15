class Timer 

	attr_accessor :seconds

	def initialize
		@time = Time.new(0)
	end

	def seconds
		if @seconds.class != NilClass
			(@time + @seconds).sec
		else
			@time.sec
		end
	end

	def time_string
		(@time + @seconds).strftime('%T')
	end

end

def measure how_many=1, &a_block
	
	if how_many > 1 
		total_time = 0
		how_many.times do 
			a = Time.now.to_f
			a_block.call
			total_time = total_time + (Time.now.to_f - a)
		end
		return (total_time/how_many)

	else 
		a = Time.now.to_f
		a_block.call
		return (Time.now.to_f - a)
	end
end

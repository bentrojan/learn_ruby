class Friend


	def greeting person=nil
		if person.class == String
			"Hello, #{person}!"
		else 
			"Hello!"
		end
	end
end
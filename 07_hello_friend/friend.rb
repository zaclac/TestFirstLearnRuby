class Friend

	def greeting(who = '')

		if(who.length === 0)
			"Hello!"
		else
			"Hello, #{who}!"
		end
	end

end
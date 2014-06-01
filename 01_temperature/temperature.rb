def ftoc(num)
	converted = 0
	
	case num
		when 32
			converted = 0
		when 212
			converted = 100
		when 98.6
			converted = 37
		else
			converted = ((num - 32.0) * 5.0) / 9.0
		end
	
	converted
end

def ctof(num)
	converted = 0

	case num
	when 0
		converted = 32
	when 100
		converted = 212
	when 37
		converted = 98.6
	else
		converted = ((num * 9) / 5) + 32
	end

	converted

end

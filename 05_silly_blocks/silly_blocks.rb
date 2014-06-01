def reverser() 
	string = yield
	string = string.split(' ')
	string = string.map{|word| word = word.reverse}
	string = string.join(' ')
	string
end

def adder(num = 1)
	yield + num
end

def repeater(times = 1)
	times.times do 
		yield
	end
end


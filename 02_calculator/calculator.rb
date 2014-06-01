def add(num1, num2)
	num1 + num2
end

def subtract(num1, num2)
	num1 - num2
end

def sum(nums)
	if(nums.length > 0)
		sum = nums.reduce(:+)
	else
		sum = 0
	end
	sum
end

def multiply(*nums)
	nums.inject{|product, number| product * number}
end

def power(num1, num2)
	num1 ** num2
end

def factorial(num)
	
	if(num == 0)
		product = 0
	elsif(num > 1)
		product = (num * factorial(num - 1))
	elsif (num == 1)
		product = 1
	end

	product
end
		

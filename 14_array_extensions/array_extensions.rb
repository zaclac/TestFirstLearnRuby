class Array

	def sum

		self.length > 0 ? self.reduce(:+) : 0

	end

	def square

		self.length > 0 ? self.map{|num| num = num ** 2 } : []

	end

	def square!

		self.length > 0 ? self.map!{|num| num = num ** 2} : []

	end

end
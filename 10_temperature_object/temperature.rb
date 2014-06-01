class Temperature

	attr_accessor :temp

	def initialize(options)

		@temp = options

	end

	def in_fahrenheit()

		@temp.has_key?(:f) ? temp[:f] : ((temp[:c] * 9) / 5.0) + 32
	end

	def in_celsius()

		@temp.has_key?(:c) ? temp[:c] : ((temp[:f] - 32) * 5) / 9.0
	end

	def self.from_celsius(num)
		initialize({:c => num})
	end

	def self.from_fahrenheit(num)
		initialize({:f => num})
	end

end
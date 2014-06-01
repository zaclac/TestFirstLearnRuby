class Timer

	attr_accessor :seconds

	def initialize(seconds = 0)
		@seconds = seconds
	end

	def padded(num)
		num.to_s.length > 1 ? num.to_s : "0" + num.to_s
	end

	def time_string

		seconds = @seconds

		hours = seconds / 3600

		seconds = seconds - (hours * 3600)

		minutes = seconds / 60

		seconds = seconds - (minutes * 60)

		hours = padded(hours)
		minutes = padded(minutes)
		seconds = padded(seconds)

		"#{hours}:#{minutes}:#{seconds}"

	end


end
def measure(times = 1)
	total = 0
	times.times do
		start = Time.now
		yield
		total = total + (Time.now - start)
	end

	total / times
end

class Fixnum

	def in_words(number = nil)

		number.nil? ? number = self : nil

		if number === 0
			return 'zero'
		end

		numString = ''

		onesPlace = ['one', 'two', 'three', 'four','five','six','seven','eight','nine']

		tensPlace = ['ten','twenty','thirty','forty','fifty','sixty','seventy','eighty','ninety']

		teenagers = ['eleven','twelve','thirteen','fourteen','fifteen','sixteen','seventeen','eighteen','nineteen']

		left = number

		write = left/1000000000000

		left = left - write * 1000000000000

		if write > 0
			trillions = in_words write
			numString = numString + trillions + ' trillion'

			if left > 0
				numString = numString + ' '
			end
		end


		write = left/1000000000

		left = left - write * 1000000000

		if write > 0
			billions = in_words write
			numString = numString + billions + ' billion'

			if left > 0
				numString = numString + ' '
			end
		end




		write = left/1000000

		left = left - write * 1000000

		if write > 0
			millions = in_words write
			numString = numString + millions + ' million'

			if left > 0
				numString = numString + ' '
			end
		end

		write = left/1000

		left = left - write * 1000

		if write > 0
			thousands = in_words write
			numString = numString + thousands + ' thousand'

			if left > 0
				numString = numString + ' '
			end
		end


		write = left/100

		left = left - write * 100

		if write > 0
			hundreds = in_words write
			numString = numString + hundreds + ' hundred'

			if left > 0
				numString = numString + ' '
			end
		end

		write = left/10
		left = left - write*10

		if write > 0
			if ((write == 1) and (left > 0))

				numString = numString + teenagers[left-1]

				left = 0;
			else
				numString = numString + tensPlace[write - 1]
			end

			if left > 0
				numString = numString + ' '
			end
		end

		write = left
		left = 0

		if write > 0
			numString = numString + onesPlace[write - 1]
		end

		numString
	end
end
def translate(words)

	words = words.split(' ')

	pig = "ay"
	prepig = ''

	words = words.map { |word|

		is_capitalized = word.slice(0) === word.slice(0).upcase
		has_punctuation = false

		#check for troublesomepunctuation at the end of a sentence
		#if word.end_with?(/[!?.]/)
			#has_punctuation = true
			#word.punctuation = word.delete!(/[.!?]/)
		#end

		word = word.downcase

		first_vowel = word.index(/[aeiou]/)
		

		case first_vowel
		when 0
			word = word + pig
		when 1
			if word.start_with?('qu')
				prepig = word.slice!(0,2)
				word = word + prepig + pig
			else
				prepig = word.slice!(0)
				word = word + prepig + pig
			end
		when 2
			if word.start_with?('squ')
				prepig = word.slice!(0,3)
				word = word + prepig + pig
			else
				prepig = word.slice!(0,2)
				word = word + prepig + pig
			end
		when 3
			prepig = word.slice!(0,3)
			word = word + prepig + pig
		end

		if is_capitalized
			word = word.capitalize
		end

		#if has_punctuation
			#word = word + punctuation
		#end
		
		word
	}
	words.join(' ')
end
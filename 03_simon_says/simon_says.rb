def echo(word)
	word
end

def shout(word)
	word.upcase
end

def repeat(word, times = 2)
	string = word

	unless times < 2
		string = []
		times.times do
			string << word
		end
		string = string.join(' ')
	end
	string
end

def start_of_word(word, num_of_characters)
	word.slice(0,num_of_characters)
end

def first_word(sentence)
	sentence.split(' ').shift
end

def titleize(sentence)

	sentence = sentence.split(' ')
	sentence = sentence.map{|x|
		if x.length >= 5
			x = x.capitalize
		else
			case x
			when 'over','the','and','if','a','or','but'
				x
			else
				x = x.capitalize
			end
		end
	}
	sentence[0] = sentence[0].capitalize
	sentence = sentence.join(' ')

	sentence
end


class Book

	attr_reader :title

	def title=(sentence)
		if(@title != '')
			sentence = sentence.split(' ')
			sentence = sentence.map{|x|
			
				case x
					when 'over','the','and','if','a','or','but','of','an','am','as','at','in'
						x
					else
						x = x.capitalize
				end}
			sentence[0] = sentence[0].capitalize
			sentence = sentence.join(' ')

			@title = sentence
		end

		@title
	end
end
class Dictionary

	attr_reader :entries
	attr_reader :keywords

	def initialize()
		@entries = {}
		@keywords = []
	end

	def add(entry)
		
		entry.instance_of?(String) ? add({entry => nil}) :
		entry.each{|word, definition|
			@entries[word] = definition
			@keywords << word
			@keywords = keywords.sort
			}
	end

	def include?(word)

		keywords.include?(word)
	end

	def find(word)
		result = {}
		result = include?(word) ? entries.select{|key,value| key == word} : 
								  entries.select{|key, value| key.start_with?(word)}
	end

	def printable
		@entries.to_s.dump
	end
end
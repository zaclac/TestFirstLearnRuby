class XmlDocument

	def initialize(indenting = false)

		@indenting = indenting
		@indent_depth = 0

	end

	def method_missing(method_name, *args, &block)

		attributes = args[0] || {}

		output = ""

		output << ("  " * @indent_depth) if @indenting

		output << "<#{method_name}"

		attributes.each_pair do |key, value|

			output << " #{key}='#{value}'"

		end

		if block

			output << ">"

			output << "\n" if @indenting

			@indent_depth += 1

			output << yield

			@indent_depth -= 1

			output << ("  " * @indent_depth) if @indenting

			output << "</#{method_name}>"

			output << "\n" if @indenting

		else

			output << "/>"

			output << "\n" if @indenting
		end

		output
	end
end
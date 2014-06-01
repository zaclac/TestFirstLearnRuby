class RPNCalculator

	attr_accessor :calculator

	def initialize

		@calculator = [0]

	end

	def push(value)

		calculator.push(value)

	end

	def pop

		number = calculator.pop
		raise "calculator is empty" if number.nil?
		number

	end

	def plus

		push(pop + pop)

	end

	def minus

		first_number = pop
		second_number = pop
		push(second_number - first_number)

	end

	def times

		push(pop * pop)

	end

	def divide
		first_number = pop.to_f
		second_number = pop.to_f
		push(second_number / first_number)

	end

	def value

		calculator[-1]

	end

	def tokens(token_string)

		token_string.split(' ').map{|token|

			case token

			when '+','-','*','/'
				token = token.to_sym
			else
				token = token.to_f
			end

			}

	end

	def evaluate(token_string)

		token_list = tokens(token_string)

		token_list.each{|token| 

			case token

			when :+
				plus
			when :-
				minus
			when :*
				times
			when :/
				divide
			else
				push(token)
			end

		}

		value
	end

end
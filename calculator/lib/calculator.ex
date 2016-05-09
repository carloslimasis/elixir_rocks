defmodule Calculator do

	def get_name do
		IO.gets("What is your name? ")
		|> String.strip
	end

	def get_operation do
		IO.getn("What do you do? \n 1 - Subtract \n 2 - Sum \n 3 - Divide \n 4 - Multiply \n", 1)
	end

	def get_number do
		String.to_integer(IO.gets("What is the number? ") |> String.strip)
	end

	def show_result(message, result) do
		IO.puts message
		IO.puts result
	end

	def execute do
		name = get_name
		first_number = get_number
		second_number = get_number
		operation = get_operation
		message = "the result of the operation is, "

		case String.downcase(operation) do
	      "1" ->
	        show_result "#{name}, #{message} ", first_number - second_number
	      "2" ->
	      	show_result "#{name}, #{message} ", first_number + second_number
	      "3" ->
	      	show_result "#{name}, #{message} ", first_number / second_number
	      "4" ->
	       	show_result "#{name}, #{message} ", first_number * second_number
	    end
	end
end

defmodule Calculator do

	defp get_name do
		IO.gets("What is your name? ")
		|> String.strip
	end

	defp get_operation do
		IO.getn("What do you do? \n 1 - Subtract \n 2 - Sum \n 3 - Divide \n 4 - Multiply \n", 1)
	end

	defp get_number do
		number = IO.gets("What is the number? ")
		unless String.trim(number) |> String.length > 0 do
			get_number
		else
			number |> String.strip
		end

	end

	defp show_result(message, result) do
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

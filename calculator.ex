defmodule Calculator do

	defp get_name do
		IO.gets("What is your name? ")
		|> String.strip
	end

	defp get_operation do
		IO.getn("What do you do? \n 1 - Subtract \n 2 - Sum \n 3 - Divide \n 4 - Multiply \n", 1)
	end

	defp get_number do
		IO.gets("What is the number? ") 
		|> String.strip
		|> String.to_integer
	end

	defp show_result(message, result) do
		IO.puts message
		IO.puts result
	end

	def execute do
		
		multiply = &(&1 * &2)
		sum = &(&1 + &2)
		subtract = &(&1 - &2)
		divide = &(&1 / &2)

		name = get_name
		first_number = get_number
		second_number = get_number
		operation = get_operation
		message = "the result of the operation is, "

		case String.downcase(operation) do
	      "1" ->
	        show_result "#{name}, #{message} ", subtract.(first_number, second_number)
	      "2" ->
	      	show_result "#{name}, #{message} ", sum.(first_number, second_number)
	      "3" ->
	      	show_result "#{name}, #{message} ", divide.(first_number, second_number)
	      "4" ->
			show_result "#{name}, #{message} ", multiply.(first_number, second_number)
		   _  -> 
			show_result "operacao inexistente", ""
	    end
	end
end

defmodule HelloWorld do
  def hello(name \\ "World") do
    IO.puts "Hello, #{name}!"
  end
end

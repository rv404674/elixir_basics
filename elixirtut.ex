defmodule M do
  def getName do
    name = IO.gets("What is your name? ") |> String.trim
    IO.puts "Hello #{name}"
    data_stuff()
  end

  def data_stuff do
    one_to_ten = 1..10
    my_str = "My Sentence"
    IO.puts("Length of the String: #{String.length(my_str)}")

    # NOTE: this is how you concatenate
    longer_str = my_str <> " " <> "is longer"

    # NOTE: you can use == as well. === checks for both value and type
    # where as == checks only for value.
    IO.puts("Equal : #{"Egg" === "egg"}")

    first_char = String.first(my_str)
    char_at_four = String.at(my_str, 4)
    # NOTE: char starting from 3, till 8 char.
    substring = String.slice(my_str, 3, 8)

    # NOTE: reverse, capitalize, split
    name = "rahul verma"
    IO.inspect String.split(longer_str, " ")
    IO.puts String.reverse(name)

    # PIPE
    4 * 10 |> IO.puts()
  end

  def math_stuff do
    IO.puts("5 + 4: #{5 + 4}")
    IO.puts("5*4: #{5 * 4}")
    IO.puts("5/4: #{5/4}")
    IO.puts("5 div 4: #{div(5,4)}")
    IO.puts("5 % 4: #{rem(5,4)}")
  end
  
end
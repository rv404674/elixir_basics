defmodule M do
  def list_basics do
    first_list = [3.24, "Sachin Verma"]
    IO.inspect first_list

    # NOTE: lists are implemented as linked lists in elixir, so prepending is faster than appending.
    second = ["n" | first_list]
    IO.inspect second

    third = first_list ++ ["Rahul Verma"]
    # [3.24, :rahul, "Sachin Verma", "Rahul Verma"]
    IO.puts("Third List: ")
    IO.inspect(third)

    # NOTE: ++/2. here ++ is the function/operator and 2 is the arity, which means the function will take 2 parameters.

    IO.puts("#{hd third}")
    IO.puts("#{tl third}")

    # Loop over list
    words = ["Random", "sachin", "Sumedha", "sagar"]
    Enum.each words, fn endword ->
    IO.puts(endword)
    end

    IO.puts("#{List.delete(words, "Random")}")
  end


  def tuple_basics do
    # tuples are stored continuosly in memory. This makes their access their length fast but modification expensive.
    first_tuple = {"rahul verma", 3456}
  end

  def map_basics do
    # go to key-val stored. Unlike keyword lists, they allow any type of value and are unordered.
    capital = %{"alabama" => "Montogemry", "Arizona" => "Phoenix", "Himachal Pradesh" => "Shimla"}
    IO.puts("Capital of Arizona is: #{capital["Arizona"]}")

    capital2 = %{alabama: "Montogomery", arizona: "Phoeninx"}
    IO.puts("#{capital2.arizona}")

    capital3 = Dict.put_new(capital, "Rahul", "Verma")
    #IO.inspect capital3

  end



end

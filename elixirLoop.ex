defmodule M do
  def looping_basics do
    # FIXME: All variables are immutable in elixir.
    loop(1, 10)
    one_to_10 = 1..10
  end

  def loop(0, _), do: nil

  def loop(min, max) do
    # NOTE: Recursive fn to do looping
    if min > max do
      loop(0, max)
    else
      IO.puts("NUM: #{min}")
      loop(min + 1, max)
    end
  end

  def enum_basics do
    IO.puts "Even List: #{
      Enum.all?(
        [1, 2, 3, 4],
        fn (n) -> rem(n, 2) === 0 end
      )
    }"

    Enum.each([1,2,3], fn(n) -> IO.puts(n) end)
    db_list_map = Enum.map([1,2,3], fn(n) -> n*2 end)
    IO.inspect db_list_map
  end

  def list_comprehension do
    db_list = for n <- [1,2,3], do: n * 2
    IO.inspect db_list

    even_list = for n <- [1,2,3,4], rem(n,2) == 0, do: n
    IO.inspect even_list
  end



end
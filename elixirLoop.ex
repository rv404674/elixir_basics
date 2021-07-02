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
    else dd
      IO.puts("NUM: #{min}")
      loop(min + 1, max)
    end
  end


end
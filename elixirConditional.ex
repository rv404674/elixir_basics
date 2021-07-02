defmodule M do
  def conditional_basic do
    # NOTE: if
    age = 18

    if age >= 18 do
      IO.puts("You can vote")
      else
      IO.puts("You can't vote")
    end

    # NOTE: unless is reverse of if
    unless age === 18 do
      IO.puts("You are not 18")
      else
      IO.puts("You are 18")
    end

    # NOTE: condition, first hit will be executed, be cautious with the order of execution
    # fizzbuzz
    # divisible by 3 - fizz, by 5- buzz, by 5 and 3 = fizzbuzz, else i
    i = 16
    cond do
      rem(i,5) === 0 and rem(i,3) === 0 -> IO.puts("fizzbuzz")
      rem(i,3) -> IO.puts("fizz")
      rem(i,5) -> IO.puts("buzz")
      true -> IO.puts("#{i}") # true is like a default
    end

    # NOTE: case
    case 2 do
      1 -> IO.puts("You entered 1")
      2 -> IO.puts("You entered 2")
      _ -> IO.puts("Default")
    end

    # ternary operator
    age = 23
    name = unless age>22, do: "Rahul Verma", else: "Sachin Verma"
    IO.puts(name)
  end
end
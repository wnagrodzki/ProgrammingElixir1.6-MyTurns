# Write a mapsum function that takes a list and a function. It applies the function to each element of the list and then sums the result, so
#  iex> MyList.mapsum [1, 2, 3], &(&1 * &1)
#  14

defmodule MyList do
    
    def mapsum(list, func) do
        mapsum(list, 0, func)
    end

    defp mapsum([head | tail], acc, func) do
        mapsum(tail, acc + func.(head), func)
    end

    defp mapsum([], acc, _func) do
        acc
    end

end

IO.puts MyList.mapsum([1, 2, 3], fn (n) -> n end)
IO.puts MyList.mapsum('A', fn (n) -> n end)

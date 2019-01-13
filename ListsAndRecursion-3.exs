# An Elixir single-quoted string is actually a list of individual character codes. 
# Write a caesar(list, n) function that adds n to each list element, wrapping if the addition results in a character greater than z.
#  iex> MyList.cesar('ryvkve', 13)

defmodule MyList do

    def cesar([], _n) do
        []
    end

    def cesar([hd | []], n) do
        if hd + n < ?z do
            [hd + n]
        else
            cesar([hd], n - ?z + ?a - 1)
        end
    end

    def cesar([hd | tl], n) do
        cesar([hd], n) ++ cesar(tl, n)
    end

end

IO.puts MyList.cesar('ryvkve', 13)

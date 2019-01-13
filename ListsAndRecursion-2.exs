# Write a max(list) that returns the element with the maximum value in the list. (This is slightly trickier than it sounds.)

defmodule MyList do

    def maxlist([]) do
        nil
    end

    def maxlist([hd | []]) do
        hd
    end

    def maxlist([hd | tl]) do
        if hd > maxlist(tl) do
            hd
        else
            maxlist(tl)
        end
    end

end

IO.puts MyList.maxlist([])
IO.puts MyList.maxlist([1])
IO.puts MyList.maxlist([1, 2, 5, 3])

# Write a function MyList.span(from, to) that returns a list of the numbers from from up to to.

defmodule MyList do

    def span(n, n) do
        [n]
    end

    def span(from, to) do
        [from] ++ span(from + 1, to)
    end

end

IO.inspect MyList.span(1, 1)
IO.inspect MyList.span(1, 10)

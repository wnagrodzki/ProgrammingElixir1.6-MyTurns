# In the last exercise of Chapter 7, ​Lists and Recursion​, you wrote a span function. 
# Use it and list comprehensions to return a list of the prime numbers from 2 to n.

defmodule MyList do

    def prime(n) do
        numbers = Enum.to_list span(2, n)
        for x <- numbers, isPrime(x), do: x
    end

    defp span(n, n) do
        [n]
    end

    defp span(from, to) do
        [from] ++ span(from + 1, to)
    end

    defp isPrime(1) do
        true
    end

    defp isPrime(2) do
        true
    end

    defp isPrime(n) do
        denominators = Enum.to_list span(2, n - 1)
        Enum.all? denominators, fn x -> rem(n, x) != 0 end
    end

end

IO.inspect MyList.prime(100)

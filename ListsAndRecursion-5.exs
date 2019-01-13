# Implement the following Enum functions using no library functions or list comprehensions: all?, each, filter, split, and take. 
# You may need to use an if statement to implement filter. The syntax for this is

defmodule MyEnum do

    def all?([], _) do
        true
    end

    def all?( [head | tail], fun) do
        # The dot is only used when calling anonymous functions that 
        # have been bound to a variable (and not functions defined inside a module). 
        # The dot also reminds us that it is an anonymous function.
        fun.(head) && all?(tail, fun)
    end

    def each([], _) do
        # noop
    end

    def each( [head | tail], fun) do
        fun.(head)
        each(tail, fun)
    end

    def filter([], _) do
        []
    end

    def filter( [head | tail], fun) do
        if fun.(head) do
            [head] ++ filter(tail, fun)
        else
            filter(tail, fun)
        end
    end

    def split(list, count) do
        split([], list, count)
    end

    defp split(listA, listB, 0) do
        {listA, listB}
    end

    defp split(listA, [head | tail], count) do
        split(listA ++ [head], tail, count - 1)
    end

    def take(_list, 0) do
        []
    end

    def take([], _count) do
        []
    end

    def take( [head | tail], count ) do
        [head] ++ take(tail, count - 1)
    end

    def flatten([]) do
        []
    end

    def flatten([head | tail]) do
        if is_list(head) do
            flatten(head) ++ flatten(tail)
        else
            [head] ++ flatten(tail)
        end
    end

end

IO.puts MyEnum.all?( [], &(&1 < 4) )
IO.puts MyEnum.all?( [1], &(&1 < 4) )
IO.puts MyEnum.all?( [1, 4], &(&1 < 4) )

MyEnum.each [1, 2, 3], &( IO.puts &1 )

IO.inspect MyEnum.filter [1, 2, 3, 4, 5], &( &1 < 3 )

IO.inspect MyEnum.split [1, 2, 3, 4, 5], 2

IO.inspect MyEnum.take [1, 2, 3, 4, 5], 6

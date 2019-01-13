# (Hard) Write a flatten(list) function that takes a list that may contain any number of sublists, which themselves may contain sublists, to any depth. 
# It returns the elements of these lists as a flat list.

defmodule MyEnum do

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

IO.inspect MyEnum.flatten([ 1, [ 2, 3, [4] ], 5, [[[6]]]])

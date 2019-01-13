# The operator rem(a, b) returns the remainder after dividing a by b. 
# Write a function that takes a single integer (n) and calls the function in the previous exercise, passing it rem(n,3), rem(n,5), and n. 
# Call it seven times with the arguments 10, 11, 12, and so on. You should get “Buzz, 11, Fizz, 13, 14, FizzBuzz, 16.

fun = fn 
    {0, 0, _} -> "FizzBuzz"
    {0, _, _} -> "Fizz"
    {_, 0, _} -> "Buzz"
    {_, _, c} -> c
end

fizzBuzz = fn n -> 
    fun.({rem(n,3), rem(n, 5), n})
end

IO.puts fizzBuzz.(10)
IO.puts fizzBuzz.(11)
IO.puts fizzBuzz.(12)
IO.puts fizzBuzz.(13)
IO.puts fizzBuzz.(14)
IO.puts fizzBuzz.(15)
IO.puts fizzBuzz.(16)

# Find the library functions to do the following, and then use each in IEx. 
# (If the word Elixir or Erlang appears at the end of the challenge, then you’ll find the answer in that set of libraries.)
# - Convert a float to a string with two decimal digits. (Erlang)
# - Get the value of an operating-system environment variable. (Elixir)
# - Return the extension component of a file name (so return .exs if given "dave/test.exs"). (Elixir)
# - Return the process’s current working directory. (Elixir)
# - Convert a string containing JSON into Elixir data structures. (Just find; don’t install.)
# - Execute a command in your operating system’s shell.

# https://erldocs.com/current/erts/erlang.html?i=4&search=float%20to#float_to_list/2
IO.puts :erlang.float_to_list(1234.5678, [decimals: 2])

# https://erldocs.com/current/kernel/os.html?i=1&search=os:get#getenv/1
IO.inspect :os.getenv('HOME')

# https://hexdocs.pm/elixir/Path.html#extname/1
IO.puts Path.extname('dave/test.exs')

# https://hexdocs.pm/elixir/System.html#cwd/0
IO.puts System.cwd()

# https://github.com/devinus/poison
# Poison.Parser.parse!(~s({"name": "Devin Torres", "age": 27}), %{})

# https://hexdocs.pm/elixir/System.html#cmd/3
IO.inspect System.cmd("echo", ["hello world"], into: IO.stream(:stdio, :line))
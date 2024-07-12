# cepb

Work on the Udemy course: The Complete Elixir and Phoenix Bootcamp  

# Resources  
[Course Repo](https://github.com/StephenGrider/ElixirCode)  
[Discord](The Complete Elixir and Phoenix Bootcamp)  

iex -S mix

## Notes  
Everything in elixir is in modules, like this one.  A module is a collection of methods.

Pattern matching is core to elixir.
Pattern matching is elixir's replacement for variable assignment.
Pattern matching is used anytime = is used.
{} are tuples in elixir
Elixir - trying to avoid writing if statements.
Atoms - think of them as being exactly like strings.  Difference between atoms and strings is
strings are used to put together information that can be passed on.  Atom are used to codify things like
response codes.   Atoms can be used to codify error messages that we can use.

Pattern Matching - both left and right hand sides have to have same value
["red", color] = ["red", "blue"] -> ok
["red", color] = ["green", "blue"] -> not ok
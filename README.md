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


## Intro to Maps
Maps are key-value pairs.
Example of map with one key-value pair: colors = %{primary: "red"}
Can have multiple properties.
Can use pattern matching to access or dot notation.

Updating value inside map:
```colors = %{primary: "red"}
colors.pimary = "blue" <- does not work
Map.put(colors, :primary, "blue") <- this works, **creates a new map though**.
```  
Syntax based map update: %{ colors | primary: "blue" } <- **gotcha - only works when updating existing property**
Can do this though: Maps.put_new(colors, :secondary, "green")

## Keyword Lists
```
colors = [{:primary: "green"}, {:secondary, "green"}]
```

```
colors[:primary]
"red"
```

This works too:  
```
colors = [primary: "red", secondary: "blue"]
```

Maps can only have one property type.  Keywords lists can do this.  
```
colors = [primary: "red", primary: "red"]
```
Use case is in things like Ecto queries.  
When passing keyword list to argument can leave off array brackets:  
```
query = User.find_where(where: user.age > 10, where: user.subscribed == true)
```
Or:
```
query = User.find_where where: user.age > 10, where: user.subscribed == true
```
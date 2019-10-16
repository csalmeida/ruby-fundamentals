# Learning Ruby

Introduction to core features of the [Ruby](https://www.ruby-lang.org) programming language and initial experiments.
**Official Documentation:** https://ruby-doc.org/

## Table of Contents

- [Getting Started](#getting-started)
  - [The Interactive Ruby Shell](#the-interactive-ruby-shell)
  - [Accessing Documentation](#accessing-documentation)
  - [Challenges](#challenges)
- [Object Types](#object-types)
  - [Objects](#objects)
  - [Variables](#variables)
  - [Numbers](#numbers)
  - [Strings](#strings)
  - [Arrays](#arrays)
  - [Hashes](#hashes)
  - [Symbols](#symbols)
  - [Booleans](#booleans)
  - [Ranges](#ranges)
  - [Constants](#constants)
  - [Nil](#nil)
  - [Challenge: Roman Numerals](challenges/roman-numerals.rb)
- [Control Structures](#control-structures)
  - [Conditionals](#conditionals)
  - [Loops](#loops)
  - [Iterators](#iterators)
  - [Challenge: Blank Patterns](challenges/blank-patterns.rb)
- [Scripting](#scripting)
  - [Best Practices](#best-practices)
  - [Exit a running script](#exit-a-running-script)
  - [Challenge: Guessing Game](challenges/guessing-game.rb)
- [Enumerables and Code Blocks](#enumerables-and-code-blocks)
  - [Enumerables](#enumerables)
  - [What is a code block?](#what-is-a-code-block)
  - [Find Methods](#find-methods)
  - [Map Methods](#map-methods)

# Getting Started

To get started Ruby needs to be installed on the machine:
```
ruby -v 
```

Should return something similar to:
`ruby 2.3.7p456 (2018-03-28 revision 63024) [universal.x86_64-darwin18]`

> If the `ruby` command is not found, [install Ruby](https://www.ruby-lang.org/en/documentation/installation/).

To run an instruction on the command line:
```
ruby -e 'puts "Hello, World"'
```

This will print `Hello, World` to the terminal.

Ruby can also be ran from files, start by creating one:
```
cd learning-ruby
touch hello.rb
```

Add an instruction to the file:
``` ruby
# object-types/hello.rb
puts "Hello World"
```

Run the file in the terminal:
```
ruby hello.rb
```

Again, `Hello, World` will print to the terminal.


## The Interactive Ruby Shell

Whilst learning or experimenting with features, it is useful to run commands. This can be done using the Interactive Ruby Shell (IRB):

```
irb
irb(main)::001:0> 1 + 1
=> 2
irb(main)::002:0> puts 2077
2077
=> nil
```

In the console above, `irb` was ran. Subsequently, an addition operation was made where the result was returned. 

The next command prints `2077` into the terminal but `nil` is also printed. This is because in Ruby most instructions return a value and `irb` makes that aspect visible.

## Accessing Documentation

Additionally, it might be helpful to access [Ruby's official documentation](https://ruby-doc.org/) to learn more about its capabilities. This document provides details about objects, their methods and more.

Alternatively, documentation is shipped with each Ruby installation, and can be accessed from the terminal using `ri` (Ruby Information):

Start by looking up a class:
```
ri String
```
> Press `space` for next page (shows available methods) or `q` to quit.

Once a method is known it can be accessed directly by using the following:

```
ri String#uppercase
```
Using `ri` allows documentation to be accessed offline if needed.

## Challenges
There are a few challenges that were completed to solidify knowledge for each chapter. Consult [`/challenges`](challenges/) to access them, both include a file with the challenge and another with a `solution.rb`.

> Challenges were designed by [Kevin Skoglund](https://twitter.com/kskoglund) for the [Ruby Essential Training course](https://www.lynda.com/Ruby-tutorials/Challenge-Roman-numerals/769286/807388-4.html) (linda.com)

# Object Types
An introduction to the various object types (also referred as data types) available in Ruby and how they work.

## Objects

To learn Ruby, it is helpful to start by understanding objects as the language is an extreme object-oriented programming language.

In other languages that's not always the case, many other object-oriented languages make use of something called _"primitives"_ which make up the most basic parts of the language and they might not necessarily relate with each other.

However in Ruby, _almost_ everything is an object and these can be interacted in similar ways. They are called objects because they are rather analogous to objects in the real world.

For instace a `book` is an object with certain properties, uses or behaviours. A book can have a blue cover, 250 pages, and a language it is published in.

The `book` can be opened, read and closed.

There are other books with different properties but all books are similar to each other in the sense they have a cover, a title, an author, pages and so on.

Objects work in a similar way, they act as a boilerplate with the option to instantiate many copies, each with their own properties.

## Variables

As mentioned in the [objects chapter](#objects), _almost_ everything is an object in Ruby. One of the exceptions are variables which act as references to objects.

They keep track of objects whilst programming and can be treated as objects once an object is assigned to them.

In the example below, `x`, `y` and `z` are all variables. They're not objects but they reference them (yes, `integers` are objects too) and they can reference each other.

``` ruby
# object-types/variables.rb
x = 1
y = x + 2
z = y - x
```

The variables names used for the example above are simple and are valid in Ruby. However, Ruby has it's own convention for naming variables by separating words with an `_`, in plain English:

``` ruby
# object-types/variables.rb
first_name = "Cristiano"
enjoying_ruby = true
articles_written = 100
```

Variables not only allow values to be assigned to them but also to be retrieved:

``` ruby
# object-types/variables.rb
x = 2077
puts x
```

#### Variable Scope Indicators

There are some variables with special meaning. These have characters to specify what they are:

|       |        |
| ------------- |:-------------:|
| **Global**     | $variables |
| **Class**      | @@variables |
| **Local** | variables |
| **Block** | variables |

Most of the time local variables are used but other types will be expanded upon on later chapters. 

## Numbers
In Ruby, numbers are split into two categories of objects, `integers` for whole numbers and `floats` for decimals, when more precision is required.

Math operations can be performed:
``` ruby 
# object-types/numbers.rb
puts "Addition (4+2):"
puts 4 + 2

puts "Subtraction (4-2):"
puts 4 - 2

puts "Division (4/2):"
puts 4 / 2

puts "Multiplication (4*2):"
puts 4 * 2

# 4 raised to the power of 2.
puts "Exponential (4**2):"
puts 4 ** 2

# Remainer of dividing 4 by 2.
puts "Modulus (4%2):"
puts 4 % 2
```

Numbers can be assigned to variables like any other object and math assigned operators can be used as well. This allows a number to be added, subtracted, divided or multiplied to the value a variable currently holds:

``` ruby
# object-types/numbers.rb

# Assigning a number to x.
x = 4

# Adding 2 to 4.
x += 2 # same as: x = x + 2

# Subtracting 2 from 6.
x -+ 2

# Dividing 4 by 2.
x /= 2

# Multiplying 2 by 2.
x *= 2

# 4 to the power of 2.
x **= 2

# The remainder of diving 16 by 2.
x %= 2
```

Integers and Floats have multiple methods that can be applied to them, for instance:

``` ruby
100.next # 101
2.6.round # 3
```

Consult `ri` or the documentation for more methods on `Floats` and `Integer` objects.

##### Notes on Floats

Floats are similar to Integers but with a few differences, specifically the way Ruby treats them in operations.

When adding two `Integer`s, the same type will be returned:
``` ruby
2 + 2 # 4, Integer
```

Similarly, the same happens with `Float`s:
``` ruby
2.6 + 2.6 # 5.2, Float 
```

However, if a `Float` is present in an operation with and `Integer` the type will convert, as Ruby assumes precision is required:

``` ruby
5 + 2.6 # 7.6, Float
```

This rule can lead to confusion in operations that use division. As two integers were provided in the example below, Ruby kept its type the same:
``` ruby
10 / 3 # 3, Integer
```

To have the correct value return both at least one of them would require to be a `Float`:

``` ruby
10.0 / 3 # 3.3333333333333335, Float
# OR
10 / 3.0
```

## Strings

Strings are a common feature in most programming languages, they represent a sequence of characters and are used to put together pieces of text.

A string is represented by wrapping it in single or double quotes. There are differences between the two which might help decide when to choose one over the other.

``` ruby
"Hello, world"
'Hello, world'
```

### Concatenation

One common operation that is performed on `String`s is concatenation. It combines them into a single piece by adding them together.

In the example below the words _hello_ and _world_ are contatenated. Notice how the comma and the space is also concatenated in the middle to show it correctly, otherwise it would output _helloworld_ with no spacing:

``` ruby
"Hello" + ", " + "world" # hello, world
```

Strings can also be assigned to variables like any other object:

``` ruby
# object-types/strings.rb
greeting = "Hello"
target = "world"
sentence = greeting + ", " + target
puts sentence # hello, world
```

Another way to join strings together is by using the `append` operator. It looks like the _less than, less than_ sign and suggests that one string is being shoved into the other:

``` ruby
# object-types/string.rb
greeting = "Hello"
greeting << ", "
greeting << "nature"
```

Strings also can be repeated by using the multiplication operator  (`*`):

``` ruby
# object-types/strings.rb
"ruby " * 4 # Ohhuuohhhuhhohhh
```

There are many methods that can be used with strings, consult `ri` to know which ones.

``` ruby
# object-types/strings.rb
puts "ruby".capitalize # Ruby
puts "ruby".upcase.reverse # YBUR
```

### Escaping and Interpolation

Besides the aspects mentioned above there are some details worth being aware of when working with strings, starting with string escaping.

In the example below, there is a first string delimited by double quotes with _Let's escape_ inside. There is a single quote in this string (in the word _let's_) and it is valid Ruby.

The second string iswrapped with single quotes but it introduces a problem. As Ruby established single quotes to be the delimiter of this string, it will mark its end when it finds its pair. So the string ends up being _Let_ instead of the intended _Let's escape_.

``` ruby
"Let's escape!"
'Let's escape!'
```

The same issue would occur with double quotes:

``` ruby 
'They said "hi" back'
"They said "hi" back"
```

To keep this issue from happening characters can be escaped. This means that `"` or `'` can be used inside a string even in these cases, making it valid Ruby:

``` ruby 
# object-types/strings.rb
'Let\'s escape!' # Let's escape!
"They said \"hi\" back" # They said "hi" back
```

The `\` escape character can also be used as special control characters such as a tab and a new line. These only work on `"` strings as `'` will print the backslash as well, one of the differences between the two.

``` ruby
"\tLet\'s escape!\n Go!" #    Let's escape!
                         # Go!
```

Additionally, interpolation can be used on strings. This means that something else can be inserted into the string, this could be a number, other objects or most commonly, a variable.

Same as the example above, interpolation only works on `"` strings:

``` ruby
# object-types/strings.rb
greeting = "Hello"
target = "world"
sentence = "#{greeting}, #{target}"
puts sentence # hello, world
```

Methods and math operations can be ran inside the interpolation brackets:

``` ruby
sentence = "#{greeting}, #{target.upcase}" # hello, WORLD
puts "2 + 2 = #{2 + 2}" # 2 + 2 = 4 
```

## Arrays

Ruby also supports arrays, an ordered, integer-indexed collection of objects.

Objects are put into an ordered list and can be referred to by the position that they hold.

The position count starts at `0` (0 indexed), common on most programming languages. This means that the first item of an array is accessed by refering `0` as its index, not `1`.

In the example below an empty array is declared. A second one is also declared with both strings and an integer inside:

``` ruby
# object-types/arrays.rb
empty_array = []
an_array = ['a', 'b', 'V', 2077]
```

To access these values the position must be referenced, positions that don't have a value return `nil`:

``` ruby
# object-types/arrays.rb
an_array[0] # a
an_array[3] # 2077
an_array[4] # nil
```

Values can also be assigned to array positions, _a_ will be replaced with _Bug_:

``` ruby
# object-types/arrays.rb
an_array[0] = "Bug"
```

A new item can be added at the end of the array by using the `append` operator:

``` ruby
# object-types/arrays.rb
an_array << "Dex"
puts an_array[4] # Dex
```

Arrays can nest other arrays and can be accessed starting from the end of the array by using negative values:

``` ruby
# object-types/arrays.rb
a_second_array = ["Omboa", "Kalunga", "Kimbo", ["Ocuria", "Onjo"]]

ruby_array = ["g","o","r","u","b","y"]
ruby_array[2] # "r"
ruby_array[-1] # "y"
```

Additionally, two positions or a [range](#ranges) can be passed to return only a set of values.

``` ruby
# object-types/arrays.rb
ruby_array[2,4] # ["r","u","b","y"]
ruby_array[-2,2] # ["b","y"]
ruby_array[2..3] # ["r","u"]
ruby_array[-4..-1] # ["r","u","b","y"]
```

### Array Methods

Arrays are used very frequently in Ruby programs and there are useful methods that can be applied to make it easier to work with them.

```ruby
# object-types/arrays.rb
mixed_array = [2,4,['a', 'b'], nil, 4, 'c']
mixed_array.length # 6
mixed_array.size # 6
mixed_array.reverse # ["c", 4, nil, ["a", "b"], 4, 2]
mixed_array.shuffle # [["a", "b"], 4, nil, 2, 4, "c"]
```

The methods above return a new value but don't affect the array stored in `mixed_array`. To make the change permanent a `!` can be added at the end of the method declaration:

``` ruby
# object-types/arrays.rb
mixed_array.uniq! # [2, 4, ["a", "b"], nil, "c"]
mixed_array.compact! # [2, 4, ["a", "b"], "c"]
mixed_array.flatten! # [2, 4, "a", "b", "c"]
```

The '?' is another Ruby idiom that can be also used in methods to query or find out about and in most cases it return a [`boolean`](#booleans) value:

``` ruby
# object-types/arrays.rb
mixed_array.include?(2) # true
```

There are other common methods that are used to manipulate arrays. Some methods take parameters in order to return a new array or another output:

```ruby
mixed_array
mixed_array.delete_at(1) # [2, "a", "b", "c"]
mixed_array.delete('c') # [2, "a", "b"]

[1,2,3,4,5].join(',') # "1,2,3,4,5"
"1,2,3,4,5".split(',') # [1,2,3,4,5]
```

Please refer to `ri` for more information on arrays.

## Hashes

Hashes are a collection just like an array. However, they are _unordered_ and object-indexed (or key-value pairs).

This object type is useful when the order of a list does not matter so much and the convenience of accessing items by a label is required. Each label (`key`) needs to be unique.

Hashes are also known as dictionaries or associative arrays in other programming languages.

An example of declaring a hash, how to access the value and reset a value:

``` ruby
# object-types/hashes.rb
car = {
  'brand' => 'Tesla',
  'model' => 'X',
  'color' => 'blue',
  'interior_color' => 'tan',
  'extras' => true
}

puts car['model']

car['color'] = "red"
car['doors'] = 2
```

Hashes have also useful methods that can be used to manipulate them. Refer to `ri` for details:

``` ruby
# object-types/hashes.rb
puts car.keys # Shows available keys of a hash.
puts car.values # Shows all values in a hash.
puts car.to_a # Turns a hash into an array.
```

## Symbols

One of the most misunderstood objects in Ruby as most languages don't have a similar one. A symbol is like a string that acts as a label.

Symbols are like strings but cannot be edited, they begin with a colon and are not delimited by quotes. 

The name of the symbol follows the same conventions as variables variables, all lowercase and separated by semicolons. For instance, `:first_name`.

A symbol can be used to define keys in hashes. This can bring two benefits: First that symbols are not editable, therefore keys cannot be changed somehow (their values can) and secondly, using symbols allows Ruby to use memory more effectively:

```ruby
# object-types/symbols.rb
person = {
  :first_name => "Richard",
  :last_name => "Bona"
}

person[:last_name]
```

Symbols can also be written in a shorthand form. They're still symbols even if the colon is at the end to separate the key from the value:

```ruby
# object-types/symbols.rb
another_person = {
  first_name: "Esperanza",
  last_name: "Spalding"
}

another_person[:last_name]
```

## Booleans

An object that is either `true` or `false`. Its mostly used for comparisons and logical expressions that define whether a piece of code runs.

Booleans can either be defined with the keywords `true` or `false`. Using `1` or `0` as booleans does not work. For instance, both `0 == true` and `1 == true` will evaluate to false.

```ruby
# object-types/booleans.rb
x = true
y = false
```

To define conditions, comparison and logic operators:

|       |        |
| ------------- |:-------------:|
| Equal    | **==** |
| Less than | **<** |
| Greater than | **>** |
| Less than or equal to | **<=** |
| Greater than or equal to | **>=** |
| Not | **!** |
| Not equal | **!=** |
| And | **&&** |
| Or | **||** |

Most of the time, booleans will be received as return values from a condition:

```ruby
# object-types/booleans.rb
z = 20

z == 77           # false
z < 77            # true
z > 77            # false
z >= 77           # true
z >= 77           # false
!z                # false
z != 77           # true
z < 77 && z > 3   # true
z < 77 || z > 10  # true
```

Additionally, booleans can be returned from methods that use the `?` sign:

```ruby
# object-types/booleans.rb
z = 20
w = []

z.nil? 
z.between?(1, 5)
w.empty?
```

## Ranges

A range of sequential objects. Most of the time these will be numbers but they don't have to.

Ranges can be inclusive or exclusive, but most of the time inclusive ones tend to be used:

```ruby
inclusive = 1..10 # 1 to 10
exclusive = 1...10 # 1 to 9
```

```ruby
inclusive.begin # 1
inclusive.first # 1
inclusive.end # 10
exclusive.first # 1
exclusive.end # 10 (surprising right?)
```

Ranges can be exploded to create arrays:

```ruby
numbers = [*inclusive] # [1,2,3,4,5,6,7,8,9,10]
```

Ranges are typically numbers but they don't have to be. Any objects with a sequential order can be put into a range:

```ruby
alphabet = 'a'..'z' # A range with the letters a to z.
alphabet.include?('c') # true
letters = [*alphabet] # [a, z]
```

## Constants

Constants are akin to variables with the difference being that once defined, it is not expected for that value to ever change on runtime.

Constants are defined using all uppercase letters.

```ruby
# object-types/constants.rb
DATE_OF_BIRTH = "March 21, 1940"
```

Usually, constants will throw an error in most programming languages it there's an attempt of changing them. However, Ruby will let the constant change and issue a warning instead.

## Nil

Nil is an object that equates to nothing. Some languages might call it `null`. For instance `nil` will be returned when a variable is empty.

```ruby
# object-types/nil.rb
money_in_the_bank = nil

puts money_in_the_bank.class # NilClass
```

In some languages `nil` can equate to `false` but this is not the case in Ruby. In the cases where a boolean value must be returned it is best to define a conditional statement instead asking if the value is `nil`:

```ruby
# object-types/nil.rb
money_in_the_bank.nil? # true

money_in_the_bank == nil # true

!money_in_the_bank # true
```

All the above statements will return true if the variable `money_in_the_bank` is empty.

> There's a challenge available for this chapter: [Roman Numerals](challenges/roman-numerals.rb)

# Control Structures

They add dynamism to the code being written and allow to determine the circumstances when code executes. For instance, using conditionals helps to define a code block to only run when a condition is met. Loops can run a code block a specific number of times or until a condition is met. Furthermore, there are iterators which uses a set of objects and it will loop moving through an `array` or a `hash`.

Control structures require multiple lines of code to be defined so it is recommended that these are written in a file rather than `irb` as they have to be retyped on mistakes.

## Conditionals

Conditionals define when a code block runs and they are declared with the `if`, `else` and `elsif` keywords. The condition it takes must return a `boolean` value, evaluating to either `true` or `false`.

```ruby
if boolean
 # execure this code
end
```

The code between the `if` condition and the `end` keyword forms block that will only execute if that condition is met.

```ruby
# control-structures/conditionals.rb
if fruit == 'mango'
  puts "A #{fruit.upcase}! They're so tasty!"
end
```

An `else` keyword may be introduced if something else should run when the condition is not met:

```ruby
# control-structures/conditionals.rb
if fruit == 'mango'
  puts "A #{fruit.upcase}! They're so tasty!"
else
  puts "Oh! I guess there are no Mangoes left."
end
```

Conditionals can also accommodate more than one comparison. If the previous one is not met, it will keep working the block down until one `elsif` is met or when the `else` block is hit.

```ruby
# control-structures/conditionals.rb
if fruit == 'mango'
  puts "A #{fruit.upcase}! They're so tasty!"
elsif fruit == 'pineapple'
  puts "Pineapples are nice too, though a bit controversial on pizza."
else
  puts "Oh! I guess there's no fruit left."
end
```

### Unless
The `unless` keyword is the opposite of `if` and it effectively means _"if not"_. It can be used to add readability to a block:

```ruby
# control-structures/conditionals.rb
unless fruit == 'mango'
  puts "This fruit is not a mango."
end
```

### Case
The if/else statement structure makes sense when a couple of conditionals is being checked. However, once there are a number of them a `case` statement should be considered.

```ruby
case
when boolean
  # code
when boolean
  # another piece of code
when boolean
  # yet another block of code
else
  # if no condition is met, run this line
end
```

Using cases makes writing blocks with multiple conditions clearer:

```ruby
# control-structures/conditionals.rb
case
when fruit == 'mango'
  puts "A #{fruit.upcase}! They're so tasty!"
when fruit.length > 5
  puts "The name of this fruit is long."
when fruit = 'pineapple'
  puts "Pineapples are nice too, though a bit controversial on pizza."
else
  puts "Oh! I guess there's no fruit left."
end
```

Cases can also be implemented on a slightly different format where a test value is put in place and will be compared with the values provided for each block, if it matches it will run the statements inside it. This implementation is more akin to a `switch` statement present in most programming languages;

```ruby
# control-structures/conditionals.rb
case fruit
when 'mango'
  puts "A #{fruit.upcase}! They're so tasty!"
when 1
  puts "Fruit cannot be a number."
when 'pineapple'
  puts "Pineapples are nice too, though a bit controversial on pizza."
else
  puts "Oh! I guess there's no fruit left."
end
```

Now the variable being compared is added as a `case` and Ruby will work down each value until one matches or hits the `else` statement.

### Shorthand for conditionals

There are shorthand for writing conditionals that can be applied when the logic is simple, for instance a _ternary operator_:

```ruby
# control-structures/conditionals.rb
puts fruit == 'mango' ? "A #{fruit.upcase}! They're so tasty!" : "Oh! I guess there are no Mangoes left."
```

On the regular if/else syntax the same logic would look like this:

```ruby
# control-structures/conditionals.rb
if fruit == 'mango'
  puts "A #{fruit.upcase}! They're so tasty!"
else
  puts "Oh! I guess there are no Mangoes left."
end
```

There is also the _or operator_, defined but the pipe sign `||` and it is useful when setting default values or evaluating based on two or more conditions concurrently:

```ruby
# control-structures/conditionals.rb
favorite_fruit = fruit || 'apple' # pineapple
```

The example above is saying "if `fruit` doesn't have a value or evaluates to `false` assign `'apple'` as the favorite fruit.

```ruby
# control-structures/conditionals.rb
if fruit == 'mango' || fruit == 'pineapple'
  puts "A #{fruit.upcase}! They're so tasty!"
else
  puts "Oh! I guess there are no Mangoes left."
end
```

The OR operator can also set default values if no value exists:

```ruby
# control-structures/conditionals.rb
favorite_fruit ||= 'passion fruit'
# OR
favorite_fruit = 'passion fruit' unless favorite_fruit
```

In this case the statement is different, it is declared that if `favourite_fruit` has no value then set it to `'passion fruit'`, otherwise keep it as it is. It is the same as:

```ruby
unless favorite_fruit
  favorite_fruit = 'passion fruit'
end
```

Lastly, conditionals can be used as _statement modifiers_. These are usually used sparingly as a complete `if` statement tends to be more readable and are declared in a single line.

```ruby
# control-structures/conditionals.rb
puts favorite_fruit if fruit == favourite_fruit
```

## Loops

Used to repeat a block of code over again, the simplest loop in Ruby is comprised of the `loop`, `do` and `end` keyword.

```ruby
loop do
  # code to repeat here
end
```

However, this code would repeat forever so a conditional or a way to limit the iterations if necessary to close the loop. There are a few _control methods_ that can be used to achieve this:

|       |        |
| ------------- |:-------------:|
| `break`     | Terminates the loop |
| `next`     | Jump to next iteration |
| `redo` | Redo an iteration |
| `retry` | Start the whole loop over |

The simplest loop in Ruby would look similar to this.

> An `index` and a condition is used to keep track of how many iterations are left to do.

```ruby
# control-structures/loops.rb
index = 5
loop do
  break if index <= 0
  puts "Countdown: #{index}"
  index -= 1
end
puts "Blast off!"
```

However, defining loops this way in Ruby is not so common as there are simpler was of achieving the same results:

```ruby
while boolean
  # run code
end

until boolean
  # run code
end
```

A more common way of defining loops is using `while` or `until`. The former iterates while a condition is met, whilst the latter will iterate until one is met.

The `break` and `do` keywords are implicit and can be ommited:

```ruby
# control-structures/loops.rb
index = 5
while index >= 0
  puts "Countdown: #{index}"
  index -= 1
end 
puts "Blast off!"

index = 5
until index <= 0
  puts "Countdown: #{index}"
  index -= 1
end 
puts "Blast off!"
```

This is how to work with loops in Ruby.

## Iterators

Loops in Ruby are fairly primitive when compared to `iterators`. They have robust support in the language and are used far more often than loops.

To iterate means to say or do again. In the case of programming it means to apply a procedure repeatedly. 

An `iterator` is going to perform code on each item in a set. Most of the time could be an `array` or a `hash` but it could also be a `range`.

The simplest iterator is the `times` iterator:

```ruby
# control-structures/iterators.rb
index = 5
index.times do
  puts "Countdown: #{index}"
  index -= 1
end
puts "Blast off!"
```

There are other types of iterators, in the examples below these are wrapped in curly braces (`{}`) since they're on a single line. However, the word `do` and `end` can be used instead to wrap them in a code block:

|       |        |
| ------------- |:-------------:|
| **times**     | `5.times { puts "Hello" }` |
| **upto**     | `1.upto(5) { puts "Hello" }` |
| **downto** | `5.downto(1) { puts "Hello" }` |
| **each** | `(1..5).each { puts "Hello" }` |

However, running iterators on a single line does not allow the previous example to be create since it makes use of the current iteration number (`index`) to count down.

To access it a block variable needs to be passed in, allowing to make use of the value as it iterates through:

```ruby
# control-structures/iterators.rb
5.downto(1) do |index|
    puts "Countdown: #{index}"
end
puts "Blast off!"
```

Using an `iterator` the `index` does not need to be incremented (or decremented in this case), Ruby does it automatically.

### Iterators by class

There are a number of iterators that can be applied to a class specifically:

|       |        |
| ------------- |:-------------:|
| **numbers**     | `times`, `upto`, `downto`, `step` |
| **range**     | `each`, `step` |
| **string** | `each_line`, `each_char`, `each_byte` |
| **array** | `each`, `each_index`, `each_with_index` |
| **hash** | `each`, `each_key`, `each_value`, `each_pair` |

Please [consult the documentation](https://ruby-doc.org/docs/ruby-doc-bundle/UsersGuide/rg/iterators.html) for more information on how to use class specific iterators.

An `each` loop can be written with the `for` keyword as well, although most Rubyists tend to prefer the former way of defining them:

```ruby
# control-structures/iterators.rb
fruits.each do |index|
  puts "I like #{fruits[index]}"
end

for fruits in fruit
  puts "#{fruit} are nice"
end
```

> There's a challenge available for this chapter: [Blank Patterns](challenges/blank-patterns.rb)

# Scripting

Expanding on Ruby scripting best practices and how to take in user input.

## Best practices

As a start it is convention that Ruby files are named with the `.rb` extension. This hints the operative system (OS) that the contents of a file are to be parsed using the Ruby interpreter.

Another best practice is to add a `shebang` at the top of the file. This is a Unix convention which stands for a `#!` and it is used to specify what should be used to run the program.

```ruby
#!/usr/bin/env ruby
```
The line above assures programs are portable, it checks the user environment (`env`) and figures out which version of Ruby is active (`ruby`)

Unix environments will use it to run the script whilst systems such as Windows will ignore it as it will look like a comment and will make use of file association instead.

## Exit a running script

There are multiple ways of exiting a script in Ruby. The most common way is to let it end automatically after running all the defined statements in a file.

Sometimes programs might have another reason to exit such as by a certain condition being met or by user input.

There are a few methods available  that exit a script:

|       |        |
| ------------- |:-------------:|
| `exit` or `exit!`     | Exits the script |
| `abort(msg)`     | Exits the script with the possibility of returning a message. |
| `control+c` | Combination of keys that sends an interrupt signal, exiting the script at any stage. |

```ruby
# ruby-scripting/exit-script.rb
legends.each do |legend|
  if legend == 'kalunga'
    exit
  end
  puts "#{legend.capitalize} joined the circle."
end
```

The example above shows the `exit` keyword in use. If the condition is met the script will exit before it prints the sentence with its name. 

This is different than `break` for instance, since the script would still run until the end and only the loop would stop running.

## Input and output

Exploring how to input and output values in Ruby.

### Output

A command used throughout this document is `puts`, which allows something to be printed in the console.

There's a variation of `puts` which is simply `print`, with the difference being that `puts` _always_ adds a line return at the end whilst `print` does not unless specified.

### Input

There's also the ability to do input using `gets`.
It will take everything typed until a user hits return.

```ruby
# ruby-scripting/input-output.rb
print "What is your name? "
response = gets

puts "Hello, #{response}!"
```

In the example above, a question is printed and the input is stored in a variable called `response`. Then, it is printed again with a greeting using `puts`.

However, the output would not look quite right since `gets` much like `puts`, adds a new line at the end so the last character of the greeting would be in a new line:

```bash
Hello, Omboa
!
```

To address this two methods can be used alongside `gets`, namely, `chop` and `chomp`. `chop` removes the last character of a string whilst `chomp` removes the last character only if it's a new line character.

```ruby
# ruby-scripting/input-output.rb
print "What is your name? "
response = gets.chomp

puts "Hello, #{response}!"
```

Now the response would look as expected:

```bash
Hello, Omboa!
```

Using input and outputs can help when interacting with the user.

> There's a challenge available for this chapter: [Guessing Game](challenges/guessing-game.rb)

# Enumerables and Code Blocks

This chapter will go more in depth on enumerables, powerful methods that can be used on them and how code blocks work.

## Enumerables

Enumerables are a set of items that can be counted. These include _arrays_, _ranges_ and _hashes_. Strings however, they're not considered an enumerable since it is difficult to determine what is being counted as some characters can be multi byte characters and there was some ambiguity in what should be counters (characters or bytes).

Strings will still behave as enumerables if what is being counted is specified.

Enumerables is a module within the Ruby language. A module is essentially a group of methods that can be included in other `class`es. The concept of modules and classes will be explored at a later chapter but it essentially means that, for instance, an `Array` can inherit methods from an `Enumerable` and make use of them. Refer to [the documentation in the included modules section](https://ruby-doc.org/core-2.6.4/Array.html) to find if methods from enumerables are available on an object.

The methods will be explored throughout the chapter.

## What is a code block?

Code blocks were first introduced in this document when used with [iterators](#iterators) but it is worth expanding further.

In the case of using iterators, the code block is defined by the words `do` and `end`, acting as delimiters for the block.

```ruby
5.times do
  puts "Hello"
end
```

The same code block can be defined in a single line if delimited by curly-braces:

```ruby
5.times { puts "Hello" }
```

The convention normally is to use the _curly-brace format_ on either single line blocks or blocks that return data but make no changes to it.

The _do-end format_ is normally used when more than one line is required or when data is changed and returned.

> "In short, use the curly-braces when it's simple, use do and end when it's anything more complex – [Kevin Skoglund](https://twitter.com/kskoglund)

### Block Variables

There are also block variables that assing an item to it, defined by the pipe sign (`|block_variable|`) and the variable can be used inside that code block.

```ruby
5.downto(1) do |i|
  puts "Countdown: #{i}"
end

# Or in a single line:

5.downto(1) { |i| puts "Countdown: #{i}" }
```

Block variables can be named to be more descriptive is required. There can also be cases depending on the method used where more than one block variable may be defined.

For instance, when working with a `hash` the key and the value can be assigned a block variable:

```ruby
scores = [low: 2, high: 8, average: 6]

scores.each do |key, value|
  puts "#{key.capitalize}: #{v}"
end
```

### Block Variable Scope

A [block variable is referenced much like a local variable](#variable-scope-indicators), however, it won't be available to use outside the block:

```ruby
# Local variable, can be used inside or outside the block.
factor = 2
1..5.each do |number|
  # A block variable can only be use inside its block.
  puts n * factor
end

# This variable does not exist in the local scope.
puts number  # undefined local variable or method
```

In the case that a `number` variable is defined within the local scope, that value will be used, not the block variable one:

```ruby
# Local variable, can be used inside or outside the block.
number = 1
factor = 2
1..5.each do |number|
  # A block variable can only be use inside its block.
  puts n * factor
end

# Variable was declared in local scope and therefore can be accessed.
puts number  # 1
```

Code blocks allow a block of code to be defined and be applied to a method.

## Find Methods

Ruby's find methods can be applied to enumerables and code blocks when sifting through a set.

A list of the most common methods applied to enumerables include:

- `find` / `detect`
- `find_all` / `select`
- `any?` / `none?`
- `all?` / `one?`
- `delete_if`

An example would be to find a value on an enumerable:

```ruby
# enumerables-and-code-blocks/find-methods.rb
range = 1..10
range.find {|number| number == 5 } # 5
```

Since the number 5 does exist in the range, the condition is met and the value is returned. [See find-methods.rb](enumerables-and-code-blocks/find-methods.rb) for more examples on how to use find methods.

## Map Methods

In Ruby, `map` and `collect` can be used to apply changes to each item on an enumerable. Mapping does a few things:

- Iterates through an enumerable.
- Execute a code block on each item.
- Add the result of the block to a new array.
- Returns the same number of items.

In the example below, `map` will iterate through a block and
the code block will make a change to the item.

```ruby
# enumerables-and-code-blocks/map-methods.rb
x = [1,2,3,4,5]
y = x.map {|number| number + 1}
```

Whilst `x` had the numbers 1 to 5 in an array, `y` will return `[2,3,4,5,6]` instead. The same number of items but `1` was added to each of them during the map.

Mapping will always return an array, even if a hash is used.

```ruby
# enumerables-and-code-blocks/map-methods.rb
scores = {low: 2, high: 8, average: 6}
adjusted_scores = scores.map do |key,value|
  "#{key.capitalize}: #{value * 100}"
end

puts adjusted_scores
```

The block would result in `adjusted_scores` being returned as an array:

```ruby
['Low: 200', 'High: 800', 'Average: 600']
```

There are also version with `!` at the end, `map!` and `collect!`. This is the way for Ruby to indicate a more powerful or destructive version of a method. 

In this case it works the exact same way but it replaces the contents of the existing array, modifying it instead of returning a new one.

```ruby
# enumerables-and-code-blocks/map-methods.rb
fruits.map! do |fruit|
  fruit.capitalize
end
puts fruits
```

Mapping is a tool that is commonly used in Ruby scripts.
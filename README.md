# Ruby Fundamentals

Introduction to core features of the [Ruby](https://www.ruby-lang.org) programming language and initial experiments.
**Official Documentation:** https://ruby-doc.org/

## Table of Contents
<details>
<summary>Click to expand contents</summary>

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
  - [Input and output](#input-and-output)
  - [Challenge: Guessing Game](challenges/guessing-game.rb)
- [Enumerables and Code Blocks](#enumerables-and-code-blocks)
  - [Enumerables](#enumerables)
  - [What is a code block?](#what-is-a-code-block)
  - [Find Methods](#find-methods)
  - [Map Methods](#map-methods)
  - [Inject Methods](#inject-methods)
  - [Sort Methods](#sort-methods)
  - [Merge Methods](#merge-methods)
- [Custom Methods](#custom-methods)
  - [Define and Call Methods](#define-and-call-methods)
  - [Variable Scope](#variable-scope)
  - [Arguments](#arguments)
  - [Return](#return)
- [Further Resources](#further-resources)
</details>

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

> Challenges were designed by [Kevin Skoglund](https://twitter.com/kskoglund) for the [Ruby Essential Training: 1 The Basics](https://www.linkedin.com/learning/ruby-essential-training-1-the-basics/) (linkedin.com)

# Object Types
An introduction to the various object types (also referred as data types) available in Ruby and how they work.

## Objects

To learn Ruby, it is helpful to start by understanding objects as the language is an extreme object-oriented programming language.

In other languages that's not always the case, many other object-oriented languages make use of something called _"primitives"_ which make up the most basic parts of the language and they might not necessarily relate with each other.

However in Ruby, _almost_ everything is an object and these can be interacted in similar ways. They are called objects because they are rather analogous to objects in the real world.

For instance a `book` is an object with certain properties, uses or behaviours. A book can have a blue cover, 250 pages, and a language it is published in.

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

There are some variables with special meaning. These have characters prexifes to specify what they are:

|    Type   |    Declaration    |
| ------------- |:-------------:|
| **Global**     | $variable |
| **Class**      | @@variable |
| **Instance**   | @variable |
| **Local** | variable |
| **Block** | variable |

Most of the time, local variables are used but other types will be expanded upon on later chapters. 

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

Numbers can be assigned to variables like any other object and math assigned operators can be used as well. This allows a number to be added, subtracted, divided or multiplied to the value a variable currently points to:

``` ruby
# object-types/numbers.rb

# Assigning a number to x.
x = 4

# Adding 2 to 4.
x += 2 # same as: x = x + 2

# Subtracting 2 from 6.
x -= 2

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

However, if a `Float` is present in an operation with an `Integer` the type will convert, as Ruby assumes precision is required:

``` ruby
5 + 2.6 # 7.6, Float
```

This rule can lead to confusion in operations that use division. As two integers were provided in the example below, Ruby kept its type the same:
``` ruby
10 / 3 # 3, Integer
```

To evaluate this expression to a more precise value (closer to being correct), both at least one of them would require to be a `Float`:

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

One common operation that is performed on `String`s is concatenation. It combines one or more `String`s into a single one by adding them together.

In the example below the words _hello_ and _world_ are contatenated. Notice how the comma and the space is also concatenated in the middle to show it correctly, otherwise it would output _helloworld_ with no spacing:

``` ruby
"Hello" + ", " + "world" # Hello, world
```

Strings can also be assigned to variables like any other object:

``` ruby
# object-types/strings.rb
greeting = "Hello"
target = "world"
sentence = greeting + ", " + target
puts sentence # Hello, world
```

Another way to join strings together is by using the `append` operator. It looks like the _less than, less than_ sign and suggests that one string is being shoved into the other:

``` ruby
# object-types/string.rb
greeting = "Hello"
greeting << ", "
greeting << "nature"
puts greeting # Hello, nature
```

Strings also can be repeated by using the multiplication operator  (`*`):

``` ruby
# object-types/strings.rb
"ruby " * 4 # ruby ruby ruby ruby (Ohhuuohhhuhhohhh)
```

There are many methods that can be used with strings, consult `ri` to find out which ones.

``` ruby
# object-types/strings.rb
puts "ruby".capitalize # Ruby
puts "ruby".upcase.reverse # YBUR
```

### Escaping and Interpolation

Besides the aspects mentioned above there are some details worth being aware of when working with strings, starting with string escaping.

In the example below, there is a first string delimited by double quotes with _Let's escape_ inside. There is a single quote in this string (in the word _let's_) and it is valid Ruby.

The second string is wrapped with single quotes but it introduces a problem. As Ruby established single quotes to be the delimiter of this string, it will mark its end when it finds its pair. So the string ends up being _Let_ instead of the intended _Let's escape_.

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

Additionally, interpolation can be used on strings. This means that something else can be inserted into the string. This something else is an expression, a question that Ruby will try to answer.

An expression could be a number, a mathematical operation, running a method on an object, other objects or most commonly, a variable.

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

Objects are put into an ordered list and can be referred to by the position that they hold when using arrays.

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

Values can also be assigned to array positions, position `0` will no longer point at the value `'a'` and will point at `"Bug"` instead:

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

The '?' is another Ruby idiom that can be also used in methods to query or find out about and in most cases it returns a [`boolean`](#booleans) value:

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

The name of the symbol follows the same conventions as variables, all lowercase and separated by underscores. For instance, `:first_name`.

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

An object that is either `true` or `false`. Its mostly used for comparisons and logical expressions that define whether a piece of code should run.

Booleans can either be defined with the keywords `true` or `false`. The values `1` or `0` may not be used in boolean expressions as they won't evaluate to the expected value. For instance, **both** `0 == true` and `1 == true` will evaluate to `false`.

```ruby
# object-types/booleans.rb
x = true
y = false
```

To define conditions, comparison and logic operators are used:

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

Constants are akin to variables with the difference being that once defined, it is not expected for that value to ever change during runtime.

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

The code between the `if` condition and the `end` keyword forms a block that will only execute if that condition is met.

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

Conditionals can also accommodate more than one comparison. If the previous one is not met, it will keep working down the block until one `elsif` is met or when the `else` block is hit.

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
The if/else statement structure makes sense when a couple of conditionals are being checked. However, once there are a number of them a `case` statement can be considered.

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

There is also the _or operator_, defined by the pipe sign `||` and it is useful when setting default values or evaluating based on two or more conditions concurrently:

```ruby
# control-structures/conditionals.rb
favorite_fruit = fruit || 'apple' # pineapple
```

The example above reads "if `fruit` doesn't have a value or evaluates to `false` assign `'apple'` as the favorite fruit.

The _OR_ operator can also be used in conditional blocks in case one of the requirements applies it will execute it:

```ruby
# control-structures/conditionals.rb
if fruit == 'mango' || fruit == 'pineapple'
  puts "A #{fruit.upcase}! They're so tasty!"
else
  puts "Oh! I guess there are no Mangoes or Pineapples left."
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

Lastly, conditionals can be used as _statement modifiers_. These are usually used sparingly as a complete `if` statement tends to be more readable. Statement modifiers are declared in a single line.

```ruby
# control-structures/conditionals.rb
puts favorite_fruit if fruit == favourite_fruit
```

## Loops

Used to repeat run a block of code multiple times, the simplest loop in Ruby is comprised of the `loop`, `do` and `end` keyword.

```ruby
loop do
  # code to repeat here
end
```

However, this code would repeat forever so a conditional or a way to limit the iterations is necessary to close the loop. There are a few _control methods_ that can be used to achieve this:

|       |        |
| ------------- |:-------------:|
| `break`     | Terminates the loop |
| `next`     | Jump to next iteration |
| `redo` | Redo an iteration |
| `retry` | Start the whole loop over |

A loop in Ruby can look similar to the following example:

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

However, defining loops this way in Ruby is not so common as there are streamlined ways of achieving the same results:

```ruby
while boolean
  # run code
end

until boolean
  # run code
end
```

A more common way of defining loops is using `while` or `until`. The former iterates while a condition is met, whilst the latter will iterate until a condition is met.

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

An introductory iterator is the `times` iterator:

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

However, running iterators on a single line does not allow the initial loop example to be created using them since it makes use of the current iteration number (`index`) to count down.

To access `index`, a block variable needs to be passed in, allowing to make use of the value as it iterates through:

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

> There's a challenge available for this chapter: [Blanket Patterns](challenges/blanket-patterns.rb)

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

There's a variation of `puts` which is `print`, with the difference being that `puts` _always_ adds a line return at the end whilst `print` does not unless specified.

### Input

There's also the ability to receive user input using `gets`.
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

To address this case, two methods can be used alongside `gets`, namely, `chop` and `chomp`. `chop` removes the last character of a string whilst `chomp` removes the last character only if it's a new line character.

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

Enumerables are a set of items that can be counted. These include _arrays_, _ranges_ and _hashes_. Strings however, they're not considered an enumerable since it is difficult to determine what is being counted as some characters can be multi byte characters and there was some ambiguity on what should be counted by default (characters or bytes).

Strings will still behave as enumerables if what is being counted is specified.

Enumerables is a module within the Ruby language. A module is essentially a group of methods that can be included in other `class`es. The concept of modules and classes will be [explored at a later chapter](https://github.com/csalmeida/ruby-classes-and-modules) but it essentially means that, for instance, an `Array` can inherit methods from an `Enumerable` and make use of them. Refer to [the documentation in the included modules section](https://ruby-doc.org/core-2.6.4/Array.html) to find if methods from enumerables are available on an object.

The methods from `Enumerable` will be explored throughout this chapter.

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

There are also block variables that assign an item to it, defined by the pipe sign (`|block_variable|`) and the variable can be used inside that code block.

```ruby
5.downto(1) do |i|
  puts "Countdown: #{i}"
end

# Or in a single line:

5.downto(1) { |i| puts "Countdown: #{i}" }
```

Block variables can be named to be more descriptive if required. There can also be cases depending on the method used where more than one block variable may be defined.

For instance, when working with a `hash` the key and the value of an item can be accessed with a block variable:

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
5.times do |number|
  # A block variable can only be use inside its block.
  puts number * factor
end

# This variable does not exist in the local scope.
puts number  # undefined local variable or method
```

In the case that a `number` variable is defined within the local scope, that value will be used, not the block variable one:

```ruby
# Local variable, can be used inside or outside the block.
number = 1
factor = 2
5.times do |number|
  # A block variable can only be use inside its block.
  puts number * factor
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

Since number 5 does exist in the range, the condition is met and the value is returned. [See find-methods.rb](enumerables-and-code-blocks/find-methods.rb) for more examples on how to use find methods.

## Map Methods

In Ruby, `map` and `collect` can be used to apply changes to each item on an enumerable. Mapping does a few things:

- Iterates through an enumerable.
- Execute a code block on each item.
- Add the result of the block to a new array.
- Returns the same number of items.

In the example below, `map` will iterate through a block and
the code block will make a change to each item:

```ruby
# enumerables-and-code-blocks/map-methods.rb
x = [1,2,3,4,5]
y = x.map {|number| number + 1}
```

Whilst `x` had the numbers 1 to 5 in an array, `y` will return `[2,3,4,5,6]` instead. The same number of items as `x` but `1` was added to each of the values during the map.

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

There are also versions with `!` at the end, `map!` and `collect!`. This is the way for Ruby to indicate a more powerful or destructive version of a method. 

In this case it works the exact same way but it replaces the contents of the existing array, modifying it instead of returning a new one.

```ruby
# enumerables-and-code-blocks/map-methods.rb
fruits.map! do |fruit|
  fruit.capitalize
end
puts fruits
```

Mapping is a tool that is commonly used in Ruby scripts.

## Inject Methods

Inject methods can be useful when reusing the current value of an item on the next iteration but it can be tricky to understand at first.

The methods are defined as `inject` and its synonym, `reduce`. The key part of an inject method is having an "accumulator" value that it uses as it iterates through an enumerable.

The accumulator is defined as a block variable and the Ruby convention is to name it `memo`.

```ruby
# enumerables-and-code-blocks/inject-methods.rb
(1..5).inject {|memo, number| memo + number}
```

In the first iteration, `memo` does not have a value and takes the first item of the enumerable instead.

On subsequent iterations it does `memo + number`, which eventually results on the sum of all the items in this case (15).

Here's a breakdown of the operation:

```ruby
memo = 1 # 1
memo = memo + 2 # 3
memo = memo + 3 # 6
memo = memo + 4 # 10
memo = memo + 5 # 15
```

Return values do matter when using inject methods. Considering the following statement:

```ruby
# enumerables-and-code-blocks/inject-methods.rb
numbers = (1..5).inject do |memo, number|
  memo + number
  x = 0
end
```

Since the return value of the block is `0`, that is what `memo` will be set to on each iteration.

```ruby
# enumerables-and-code-blocks/inject-methods.rb
(1..5).inject do |memo, number|
  memo + number
  x = 0
end
```

Inject can iterate through string items as well and a starting value can be provided which can be helpful when the item is not an integer:

```ruby
# enumerables-and-code-blocks/inject-methods.rb
fruits = ['mango', 'pineapple', 'papaya', 'guava']

size = fruits.inject(0) do |memo, fruit|
  memo + fruit.length
end
```

This code block will result in the length of all fruits being added together and returning an integer but `inject` is not restricted to returning numbers only:

```ruby
# enumerables-and-code-blocks/inject-methods.rb
longest = fruits.inject do |memo, fruit|
  if fruit.length > memo.length
    fruit
  else
    memo
  end
end
```

An empty string can also be passed when manipulating values and storing them in `memo`:

```ruby
# enumerables-and-code-blocks/inject-methods.rb
mash = fruits.inject('') do |memo, fruit|
  memo << fruit[0]
end
```

## Sort Methods

Enumerables can also be sorted. The `sort` method can be used with no arguments to return an array with default sorting:

```ruby
# enumerables-and-code-blocks/sort-methods.rb
fruits = ['mango', 'pineapple', 'papaya', 'guava', 'apricot']
default_sort = fruits.sort # [apricot, guava, mango, papaya, pineapple]
```

The default sorting for strings is alphabetical sorting in ascending order. This behaviour can be overriden by passing a code block with a comparison, using the comparison operator (`<=>`). This operator can be applied to two values (`value_1 <=> value_2`) and returns one of three values:

| Return value | Meaning | Example | Sort move |
| ------------- |:-------------:|:-------------:|:-------------:|
| -1 | Less than | `1 <=> 2` | Moves "left" |
| 0     | Equal | `2 <=> 2` | Stays |
| 1 | Greater than | `2 <=> 1`| Moves "right" |

Using the comparison operator in a code block allows sorting an enumerable in a custom way:

```ruby
# enumerables-and-code-blocks/sort-methods.rb
length_sort = fruits.sort do |fruit_1, fruit_2|
  fruit_1.length <=> fruit_2.length
end # [mango, guava, papaya, apricot, pineapple]
```

Furthermore there is `sort_by` which allows sorting based on a single property. However, `sort` tends to be slightly faster:

```ruby
# enumerables-and-code-blocks/sort-methods.rb
fruits.sort_by {|fruit| fruit.length} # [mango, guava, papaya, apricot, pineapple]
```

Both methods have a `!` version that can be used to sort enumerables in place, replacing its contents:

```ruby
# enumerables-and-code-blocks/sort-methods.rb
fruits = ['mango', 'pineapple', 'papaya', 'guava', 'apricot']

fruits.sort!
puts fruits # [apricot, guava, mango, papaya, pineapple]

fruits.sort_by! {|fruit| fruit.length}
puts fruits # [guava, mango, papaya, apricot, pineapple]
```

Sorting hashes present a problem since it is an unordered set. Sort can be called on a `hash` but it will return an `array`, an ordered set.

The way it works is by converting the hash into an array and then calling `sort` on it. The position of the values being compared needs to be specified (key or value):

```ruby
# enumerables-and-code-blocks/sort-methods.rb
hash = {a:4, y:1, c:5, b:3}

# Sorts by key
hash.sort do |pair_1, pair_2|
  pair_1[0] <=> pair_2[0]
end

# Sorts by value
hash.sort do |pair_1, pair_2|
  pair_1[1] <=> pair_2[1]
end
```

## Merge Methods

Merge methods only apply to hashes and are able to merge two of them together. Takes the keys and values of one `hash` and another to form a new `hash`. A block can be provided in order to define rules to be used when performing the merge.

```ruby
# enumerables-and-code-blocks/merge-methods.rb
hash_1 = {:a => 2, :b => 4, :c => 6}
hash_2 = {:a => 3, :b => 4, :d => 8}

hash_1.merge(hash_2) # {:a => 3, :b => 4, :c => 6, :d => 8}
```

In the example above, two hashes were merged. There were no conflicts except with the value of `hash_1[:a]` and `hash_2[:a]` as those were different.

The merge method chose to get the value of the hash being merged in by default but this can be overridden with a code block. Ruby will make use of the code block in the case of a key conflict.

```ruby
# enumerables-and-code-blocks/merge-methods.rb
hash_1.merge(hash_2) {|key,old,new| old} # {:a => 2, :b => 4, :c => 6, :d => 8}
```

Blocks are not limited to returning those values, they can also be used to return a value based on a comparison or operation:

```ruby
# Further logic can be applied to determine which value should be returned.
puts hash_1.merge(hash_2) {|key,old,new| old < new ? old : new } # {:a => 2, :b => 4, :c => 6, :d => 8}


# Both values can be used and assigned to a key.
puts hash_1.merge(hash_2) {|key,old,new| old * new } # {:a => 6, :b => 16, :c => 6, :d => 8}
```

Since `:b` also presents a `key` conflict even if they have the same values, the block logic also applies to it.

The merge method also has a `merge!` version which replaces the contents of a hash.

> There's a challenge available for this chapter: [Ruby Blanks](challenges/ruby-blanks.rb)

# Custom Methods

This chapter is focused on introducing concepts to create and work with Ruby's custom methods.

## Define and Call Methods

Methods were already mentioned in previous chapters and how they can be applied to other objects. For instance, the use of `reverse`, `each` and `sort`, methods that are predefined on Ruby objects.

This section will go over how to define can call custom methods. Methods, called functions in other programming languages, are going to provide instructions to perform a specific task which have been packaged up as a unit, and can be called later in a script, multiple times.

This allows the _"Do not Repeat Yourself"_ (DRY) paradigm to be applied as a method is defined once and called as needed, instead of being rewritten multiple times.

In Ruby, methods have to be defined before they can be called and can be redefined without error. Usually, on other programming languages a method/function cannot be redeclared at any point, this is not the case with Ruby.

Generally, methods will be named in lowercase, with words separated by underscores (`my_ruby_method`) and the _first_ character has always to be either lowercase or an underscore, the latter is uncommon.

Any other character can be a letter, digit or underscore, with the exception of the last character which can also be a `?`, `!` or `=`.

Additionally, using the same names for variables and methods should be avoided as it can be confusing.

### Method Definition

A method can be defined with the keywords `def` and `end` as follows:

```ruby
def method_name
  # code here...
end
```

After being defined, a method can be called as follows:

```ruby
# Executes the method.
method_name
```

A more complete method shows how arguments can be passed in:

```ruby
# custom-methods/define-and-call-methods.rb
def greet(name)
  puts "Hello, #{name}"
end

greet('Skoglund') # Hello, Skoglund
```

A method doesn't need to have arguments, but if it does, different data can be passed in each time it's called.

## Variable Scope

This section expands on the concept of variable scope, as in where variables can be accessed from in a script depending on how they get defined.

When a variable is defined without any [scope indicators](#variables), it defaults to a local variable. A variable defined inside a method is also considered a local variable, however, it cannot be accessed outside the method, the same way a local variable defined outside a method cannot be used inside one.

> Local variables inside methods only have scope inside methods.

Global, class and instance variables will have scope both outside and inside methods. This will be [expanded on at a later chapter](https://github.com/csalmeida/ruby-classes-and-modules).

```ruby
# custom-methods/variable-scope.rb
value = 10

def output_value
  value = 5
  puts value
end

output_value # Will print 5, not 10.
puts value # Will print 10, not 5.
```

The example above shows how two variables called `value` were defined and are different as they belong to different local scopes. `value = 10` is scoped to the wider structure of the document whilst `value = 5` is scoped to the `output_value` method.

## Arguments

Arguments, also referred to as `args`, allow a method to receive values at runtime (when it is called). Multiple arguments can be defined in a method, and these are separated by commas.

The order and number of arguments passed in must match the method definition. In the example below, the `volume` method expects three arguments:

```ruby
# custom-methods/arguments.rb
def volume(x, y, z)
  x * y * z
end

volume(2,3,4) # 24
```

Arguments can be used to add dynamism to scripts, as methods can be called with different values each time:

```ruby
# custom-methods/arguments.rb
volume(5,7,8) # 280
volume(42,86,22) # 79464
```

The method requires all arguments to be passed in, otherwise it will throw an error:

```ruby
volume(42,86)
# custom-methods/arguments.rb:4:in `volume': wrong number of arguments (given 2, expected 3) (ArgumentError)
```

It will also expect arguments to be passed in the correct order, otherwise unexpected behavior might occur:

```ruby
# custom-methods/arguments.rb
def introduction(greeting, name)
  puts "#{greeting}, #{name}."
end

introduction("Yoda","I am") # "Yoda, I am."
introduction("I am","Groot") # "I am, Groot."
```

The convention in Ruby is that methods should only have parentheses if they take arguments, whether they're being defined or called:

```ruby
# Parentheses being used to wrap arguments:
def introduction(greeting, name)
  puts "#{greeting}, #{name}."
end

introduction("Yoda","I am")

# The same being done with a method with no arguments.
# Uncommon, but valid Ruby.
def welcome()
  puts "Hello!"
end

welcome()

# A method with no arguments is usually defined and called with no parentheses.
def goodbye
  puts "Hello!"
end

goodbye

# However, methods with arguments can also refrain from using parentheses.
# This is discouraged and considered bad practice by some Rubyists, but some might define and call methods this way.
def call name
  puts "#{name}!"
end

call 'puppy'
```

### Argument Default Values

Arguments can be made optional, in case they're not present a default value will be put in place instead. It can take any Ruby object as an optional argument:

```ruby
def greet(greeting="Hello", name="World")
  puts "#{greeting}, #{name}"
end

greet() # "Hello, World"
```

Required arguments should be listed first as those need to be passed in, whilst optional ones are listed last. 

However, if a default value needs be skipped over, usually the optional arguments are passed in as a `hash` in order to provider further flexibility:

```ruby
# custom-methods/arguments.rb
welcome_options = {
  name: "Geralt",
  punctuation: "..."
}

def welcome(greeting, options={})
  name = options[:name] || 'friend'
  punct = options[:punctuation] || '!'
  greeting + ' ' + name + punct
end

puts welcome("It's you,", welcome_options); # It's you, Geralt...
puts welcome("Hello"); # Hello friend!
```

## Return

Methods return values, and in Ruby the last operation's value in the code block is the one returned by default. For instance, in the example below, `y + z` is the value returned:

```ruby
def custom_method(x,y,z)
  x + y
  z + x
  y + z
end
```

The last operation's value is the one returned. This can lead to pitfalls in cases where conditionals take place:

```ruby
# custom-methods/return.rb
def subtract(number_1, number_2)
  result = number_1 - number_2
  result = 0 if result < 5
end

puts subtract(8, 3) # nil
```

It is not required in Ruby for the `return` keyword to be used in the last line of the method. In some cases, a return value might be required to be declared explicitly. This can be done with the `return` keyword and it can be useful when applying `if` statements and loops and there's the need to return early.

```ruby
# custom-methods/return.rb
def greet_again(cool = false)
  if cool
    return greeting = "Yo"
  end
  greeting = "Hello"
end

cool = true
puts greet_again(cool)
```

Additionally, `puts` and `print` should be avoided in most methods as it makes them more flexible. The return value can be assigned to a variable or interpolated into a string.

It is recommended to have separate methods to make calculations and another for output.

### Return Multiple Values

Methods are able to return only one object. If more than one value needs to be returned, they need to be stored in an object enumerable like a `hash` or an `array`.

```ruby
# custom-methods/return.rb
def add_and_subtract(number_1, number_2)
  add = number_1 + number_2
  subtract = number_1 - number_2
  [add, subtract]
end
```

Furthermore, the values can be assigned to variables using Ruby's multitple assignment feature. It takes array values and assign them to each variable:

```ruby
add_result, sub_result = add_and_subtract(15,2)
puts "Addition result was #{add_result} whilst subtraction was #{sub_result}."
```

> There's a challenge available for this chapter: [Pig Latin](challenges/pig-latin.rb)

# Further Resources

- [Ruby: Classes and Modules Repository (continuation of Ruby Fundamentals)](https://github.com/csalmeida/ruby-classes-and-modules)
- [Ruby: Classes and Modules LinkedIn Course](https://www.linkedin.com/learning/ruby-classes-and-modules/define-a-class)
- [Ruby on Rails](https://rubyonrails.org/)
- [Ruby API Documentation](https://rubyapi.org/)

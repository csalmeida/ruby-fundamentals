# Learning Ruby

Contains initial experiments and files to do with the learning process of the [Ruby](https://www.ruby-lang.org) programming language.

**Official Documentation:** https://ruby-doc.org/

## Table of Contents

- [Getting Started](#getting-started)
- [The Interactive Ruby Shell](#the-interactive-ruby-shell)
- [Accessing Documentation](#accessing-documentation)
- [Objects](#objects)
- [Variables](#variables)
- [Numbers](#numbers)
- [Strings](#strings)
- [Symbols](#symbols)

## Getting Started

To get started Ruby needs to be installed on the machine:
```
ruby -v 
```

Should return something similar to:
`ruby 2.3.7p456 (2018-03-28 revision 63024) [universal.x86_64-darwin18]`

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
# hello.rb
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

## Objects

To learn Ruby, its helpful to star by understanding objects as the language is an extreme object-oriented programming language.

In other languages that's not always the case, many other object-oriented languages make use of something called _"primitives"_ which make up the most basic parts of the language and they might not necessarily relate with each other.

However in Ruby, _almost_ everything is an object and these can be interacted in similar ways. They are called objects because they are rather analogous to objects in the real world.

For instace a `book` is an object with a certain properties and uses or behaviours. A book cover can have a blue cover, 250 pages, and a language it is published in.

The `book` can be opened, read and closed.

There are other books with different properties but all books are similar to each other in the sense they have a cover, a title, an author, pages and so on.

## Variables

As mentioned in the [objects chapter](#objects), _almost_ everything is an object in Ruby. One of the exceptions are variables which act as references to objects.

They keep track of objects whilst programming and can be treated as objects once an object is assigned to them.

In the example below, `x`, `y` and `z` are all variables. They're not objects but they reference them (yes, `integers` are objects too) and they can reference each other.

``` ruby
# variables.rb
x = 1
y = x + 2
z = y - x
```

The variables names used for the example above are simple and are valid in Ruby. However, Ruby has it's own convention for naming variables by separating words with an `_`, in plain English:

``` ruby
# variables.rb
first_name = "Cristiano"
enjoying_ruby = true
articles_written = 100
```

Variables not only allow values to be assigned to them but also to be retrieved:

``` ruby
# variables.rb
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

Most of the time local variables are used but other type will be expanded upon on later chapters. 

## Numbers
In Ruby, numbers are split into two categories of objects, `integers` for whole numbers and `floats` for decimals, when more precision is required.

Math operations can be performed:
``` ruby 
# numbers.rb
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
# numbers.rb

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

Strings are a common feature in most programming languages and they represent a sequence of characters and are used to represent pieces of text.

A string is represented by wrapping it in single or double quotes. There are differences between the two which might help decide when to choose one over the other.

``` ruby
"Hello, world"
'Hello, world'
```

### Concatenation

One common operation that is performed on `String`s is concatenation. It combines them into a single piece by adding them together.

In the example below the words _hello_ and _world_ and contatenated. Notice how the comma and the space is also concatenated in the middle to show it correctly, otherwise it would represent _helloworld_ with no spacing:

``` ruby
"Hello" + ", " + "world" # hello, world
```

Strings can also be assigned to variables like any other object:

``` ruby
# strings.rb
greeting = "Hello"
target = "world"
sentence = greeting + ", " + target
puts sentence # hello, world
```

Another way to join strings together is by using the `append` operator. It looks like the _less than, less than_ sign and suggests that one string is being shoved into the other:

``` ruby
# string.rb
greeting = "Hello"
greeting << ", "
greeting << "nature"
```

Strings also can be repeated by using the multiplication (`*`) operator and methods can be ran on a string:

``` ruby
# strings.rb
"ruby " * 4 # Ohhuuohhhuhhohhh
```

There are also many other methods that can be used with strings, consult `ri` to know which ones.

``` ruby
# strings.rb
puts "ruby".capitalize
puts "ruby".upcase.reverse
```

### Escaping and Interpolation

Besides the details mentioned above there are some details worth mentioned in strings, starting with string escaping.

In the example below, there is a first string delimited by double quotes with _Let's escape_ inside. There is a single quote in this string and it is valid Ruby.

Now looking at the second string, wrapped with single quotes, which introduces a problem. As Ruby established single quotes to be the delimiter of this string, it will mark its end when it finds its pair. So the string ends up being _Let_ instead of the intended _Let's escape_.

``` ruby
"Let's escape!"
'Let's escape!'
```

Similarly the same issue would occur with double quotes:

``` ruby 
'They said "hi" back'
"They said "hi" back"
```

To keep this issue from happening characters can pe escaped. This means that `"` or `'` can be used inside a string even in these cases, making it valid Ruby:

``` ruby 
# strings.rb
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
# strings.rb
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

## Symbols

One of the most misunderstood objects in Ruby as most languages don't have a similar one. A symbol is like a string that act as a label.

Symbols are like strings but cannot be edited, they begin with a colon, are not delimited by quotes. 

The name of the symbol follows rules that are more like variables than strings, all lowercase and separated by semicolons. For instance, `:first_name`.

A symbol can be used to define keys in hashes. This can bring two benefits: First that symbols are editable, therefore keys cannot be changed somehow and secondly, using symbols allows Ruby to use memory more effectively:

```ruby
# symbols.rb
person = {
  :first_name => "Richard",
  :last_name => "Bona"
}

person[:last_name]
```

Symbols can also be written in a shorthand form. They're still symbols even if the colon is at the end to separate the key from the value:

```ruby
# symbols.rb
another_person = {
  first_name: "Esperanza",
  last_name: "Spalding"
}

another_person[:last_name]
```
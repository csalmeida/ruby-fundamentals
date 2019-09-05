# Learning Ruby

Contains initial experiments and files to do with the learning process of the [Ruby](https://www.ruby-lang.org) programming language.

**Official Documentation:** https://ruby-doc.org/

## Table of Contents

- [Getting Started](#getting-started)
- [The Interactive Ruby Shell](#the-interactive-ruby-shell)
- [Accessing Documentation](#accessing-documentation)
- [Objects](#objects)
- [Variables](#variables)

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



# Learning Ruby

Contains initial experiments and files to do with the learning process of the [Ruby](https://www.ruby-lang.org) programming language.

**Official Documentation:** https://ruby-doc.org/

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


### Using IRB and accessing documentation

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



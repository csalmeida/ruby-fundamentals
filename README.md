# Learning Ruby

Contains initial experiments and files to do with the learning process of the [Ruby](https://www.ruby-lang.org) programming language.

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
Mrs. Fisher, your sixth grade geometry teacher, has asked you to write a ruby program that
automatically greets students when they arrive at class.

### Part 1

Write a method `greet` that takes a person's `name` as a single, required argument.
It should output a greeting for the supplied name.

Sample Output:

```no-highlight
Hi John!
```

{% show_solution %}
```ruby
  def greet(name)
    puts "Hi #{name}!"
  end
```
{% endshow_solution %}

### Part 2

Modify your method so that it uses a random greeting among the following options below.

* "Hi [name]!"
* "Yo [name]!"
* "Hey [name]!"
* "What's up [name]?"

Sample output:

```no-highlight
Hey John!
```

### Part 3

Modify your method so that it takes an optional, second argument, the user's language.
If the second argument is not specified, the method should default to English.

The method should support:

* English: "Hi [name]!"
* Spanish: "Hola [name]!"
* Italian: "Ciao [name]!"
* French: "Bonjour [name]!"

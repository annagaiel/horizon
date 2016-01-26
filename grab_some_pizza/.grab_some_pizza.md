## Part I

With all this programming, you deserve a night out! First, we'll start at the
local pizza joint, we're they've asked you to place your order in Ruby!

To do so, you'll have to design your `Pizza` class. By default, the chef will
assume you'd like a `:cheese` pizza.

Optionally, you can decide if you want your pizza to also have any combination
of `:pepperoni`, `:bacon`, `:sausage`, `:mushroom`, `:onion`, 
`:jalapeno`, or `:green_pepper`.

In order for the legendary chef to cook your pizza, he needs to know what
ingredients you would like, so be sure to make your ingredients available to
outside callers.

{% show_hint %}
* Consider how you store lists. How can you use a list construct your `Pizza`
    instances?
{% endshow_hint %}

## Part II

Define a `cost` instance method that helps you to determine how much your pizza will
cost. A pizza costs a base of **$8.00**, and each topping costs the following:

```no-highlight
Cheese: $0.10
Green Pepper: $0.30
Onion: $0.50
Mushroom: $0.70
Pepperoni: $1.10
Jalapeno: $1.30
Sausage: $1.70
Bacon: $1.90
```

## Part III

It would be easier for the chef if you could separate your order between `meats`
(`:sausage`, `:pepperoni`, `:bacon`)
and other toppings (`:cheese`, `:green_pepper`, `:onion`, `:mushroom`,
`:jalepeno`). 
We can call those toppings `other_toppings` and include Mushrooms and Cheese as part
of that group. Define two instance methods that will provide the chef with the
separated list of toppings you selected when constructing your pizza.

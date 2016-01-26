Let's return to our night out together. Before we head out to the movie, we 
decide to grab a cup of coffee at the diner next door.

It just so happens that this stretch of local businesses really likes object oriented design and Ruby!
Much like the Pizza chef, the waiter at the diner has requested that you model your coffee
cup in the form of a Ruby instance before he serves you. So much for a night
off!

### Part I - Model Your Cup

Create a constructor that instantiates your coffee cup with an amount of coffee
and a maximum capacity. Most cups support 12 oz and are filled up to 8 oz, so
use those as default values.

### Part II - Take a Sip and Handle Spills

Implement a `sip!` method that decreases the amount of coffee in your cup. It
should permanently affect the state of your coffee cup instance.

Output the error "Hey! You need a refill!" if there is no more coffee left to
sip.

Who brought the klutz? One of your friends knocked over your coffee cup!
Implement a `spill!` method that eliminates all of the coffee in your cup.

### Part III - Get a Refill

Implement a `refill!` method that refills your cup. The amount of coffee 
refilled should always be 2 oz less than the maximum capacity of the cup.

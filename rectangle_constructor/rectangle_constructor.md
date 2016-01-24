### Part I

Define a new `class` that represents a `Rectangle`.

It should require two arguments, the `width` and the `height`.
This information should be retained as part of each instance's **state**.

You should be able to replicate output similar to the following pry session using this new
constructor.

```no-highlight
pry(main)> Rectangle.new(5, 6)
=> #<Rectangle:0x007f8dc4165ef0 @height=6, @width=5>
pry(main)> Rectangle.new(4, 6)
=> #<Rectangle:0x007f8dc50d09f8 @height=6, @width=4>
pry(main)> Rectangle.new(4, 8)
=> #<Rectangle:0x007f8dc4071b98 @height=8, @width=4>
```

### Part II

Modify your `Rectangle` class so that it only requires a single argument, but
allows an optional, second argument.
If a single argument is specified, assume the `Rectangle` is a
square, where both the `width` and `height` are equal.

```no-highlight
pry(main)> Rectangle.new(5, 6)
=> #<Rectangle:0x007ff97324e180 @width=5, @height=6>
pry(main)> Rectangle.new(8, 6)
=> #<Rectangle:0x007ff9732456c0 @width=8, @height=6>
pry(main)> Rectangle.new(9)
=> #<Rectangle:0x007ff97323de48 @width=9, @height=9>
pry(main)> Rectangle.new(12)
=> #<Rectangle:0x007ff973235338 @width=12, @height=12>
```

### Part III

Extend your `Rectangle` constructor further so that is maintains the shape's
area as part of the instance's state.

You should be able to replicate output similar to the following pry session using this new
constructor.

{% show_hint %}
* The area of rectangle is defined as its `width` multiplied by its `height`
* You will require an additional instance variable in order to maintain the
  instance's area.
{% endshow_hint %}

{% show_solution %}
```ruby
class Rectangle
  def initialize(width, height = nil)
    @width = width,
    if height.nil?
      @height = width
    end
    @area = @width * @height
  end
end
```
{% endshow_solution %}


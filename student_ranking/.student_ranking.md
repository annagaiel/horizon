The grades are tabulated and now it's time to crown the Geometry class champions!

The highest grades, in order, are awarded to `Johnny, Jane, Sally, Elizabeth, and Michael`.

Implement a `rankings` method that requires one argument `students`.
This argument should represent the ordered list of students that ranked highest in the class.

Utilize the `each_with_index` method on `Array` to have your method output the following string,
given the above highest grades:

```no-highlight
1. Johnny
2. Jane
3. Sally
4. Elizabeth
5. Michael
```

{% show_solution %}
```ruby
def rankings(students)
  students.each_with_index do |student, index|
    puts "#{index + 1}. #{student}"
  end
end

rankings(['Johnny', 'Jane', 'Sally', 'Elizabeth', 'Michael'])
```
{% endshow_solution %}

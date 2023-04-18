# TODO Class Design Recipe

## 1. Describe the Problem

_As a user So that I can keep track of my tasks, I want a program that I can add todo tasks to and see a list of them_
_So that I can focus on tasks to complete I want to mark tasks as complete and have them disappear from the list_

## 2. Design the Class Interface

_Include the initializer and public methods with all parameters and return values._

```ruby

class Todolist
  def initialize # name is a string
  end

  def add(task) # task is a string representing a instruction
    # No return value
  end

  def list()
    # returns a list of the tasks added as strings
    # except the completed ones
  end

  de complete(task) #task is a string representing a task t mark complete
  # returns nothing
  # fails if the task doesn't exist
end
```

## 3. Create Examples as Tests

_Make a list of examples of how the class will behave in different situations._

```ruby
# EXAMPLE

# 1
todo_list = TodoList.new
todo_list.list # => []

todo_list = TodoList.new
todo_list.add("Wash the car")
todo_list.list # => ["Wash the car"]

todo_list = TodoList.new
todo_list.add("Wash the car")
todo_list.add("Wash the dog")
todo_list.list # => ["Wash the car", "wash the dog"]

todo_list = TodoList.new
todo_list.add("Wash the car")
todo_list.add("Wash the dog")
todo_list.comnplete("Wash the car")
todo_list.list # => ["wash the dog"]

todo_list = TodoList.new
todo_list.add("Wash the car")
todo_list.comnplete("Wash the sheep")
todo_list.list # => fails "no such task"

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_class_recipe_template.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
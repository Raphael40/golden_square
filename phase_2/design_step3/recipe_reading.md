# {{PROBLEM}} Method Design Recipe

Copy this into a `recipe.md` in your project and fill it out.

## 1. Describe the Problem

As a user I can read 200 words a minute.
I want to see an estimate of reading time for a text of any length.

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

name of method = reading_speed(text)
return value = integer

```ruby
# EXAMPLE

# `reading speed = returns reading speed` extracts uppercase words from a string
reading_time = reading_speed(text)

text: a string of any length (e.g. "blahaha haha hahahahhah ahaha hahah hahahahahha")
reading_time: length of time as an integer (e.g. 3.21)

# The method doesn't print anything or have any other side-effects
```


## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLE

reading_speed("hello WORLD") => 0.6
reading_speed("where am i") => 0.9
reading_speed("in the deep ocean") => 1.2
reading_speed("drinking a cold can diet) => 1.5
reading_speed("") => 0
reading_speed(nil) throws an error

```

_Encode each example as a test. You can add to the above list as you go._

## 4. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green, refactor to implement the behaviour._


<!-- BEGIN GENERATED SECTION DO NOT EDIT -->

---

**How was this resource?**  
[😫](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_method_recipe_template.md&prefill_Sentiment=😫) [😕](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_method_recipe_template.md&prefill_Sentiment=😕) [😐](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_method_recipe_template.md&prefill_Sentiment=😐) [🙂](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_method_recipe_template.md&prefill_Sentiment=🙂) [😀](https://airtable.com/shrUJ3t7KLMqVRFKR?prefill_Repository=makersacademy%2Fgolden-square&prefill_File=resources%2Fsingle_method_recipe_template.md&prefill_Sentiment=😀)  
Click an emoji to tell us.

<!-- END GENERATED SECTION DO NOT EDIT -->
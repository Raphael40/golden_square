# {{PROBLEM}} Method Design Recipe

Copy this into a `recipe.md` in your project and fill it out.

## 1. Describe the Problem

As a user 
So that I can improve my grammar 
I want to verify that a text starts with a capital letter and ends with a suitable sentence-end puncutation mark. 

## 2. Design the Method Signature

_Include the name of the method, its parameters, return value, and side effects._

name of method = punctuation_checker(text)
return value = true or false

```ruby
# EXAMPLE

# `reading speed = returns reading speed` extracts uppercase words from a string
valid_text = punctuation_checker(text)

text: Text a string that may not start with a capital and end with punctuation (e.g. "Blahaha haha hahahahhah ahaha hahah hahahahahha.")
result: true or false

# The method doesn't print anything or have any other side-effects
```


## 3. Create Examples as Tests

_Make a list of examples of what the method will take and return._

```ruby
# EXAMPLE

punctuation_checker("hello WORLD") => false
punctuation_checker("Where am i.") => true
Punctuation_checker("in the deep ocean.") => false
Punctuation_checker("Drinking a cold can diet) => false
Punctuation_checker("") => false
Punctuation_checker("Chickens!") => true
Punctuation_checker("Chickens?") => true 


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
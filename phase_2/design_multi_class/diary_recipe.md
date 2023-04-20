# Diary Multi-Class Planned Design Recipe

## 1. Describe the Problem

_I want to keep a regular diary_

_I want to read my past diary entries_

_I want to select diary entries to read based on how much time I have and my reading speed_

_I want to see a list of all of the mobile phone numbers in all my diary entries_

_I want to keep a todo list along with my diary_

## 2. Design the Class System

_Consider diagramming out the classes and their relationships. Take care to
focus on the details you see as important, not everything. The diagram below
uses asciiflow.com but you could also use excalidraw.com, draw.io, or miro.com_

```
┌────────────────────────────┐
│ diary                      │    
│                            │    
│ - add entry                │
│ - list                     │
│ - search_by_title(keyword) │
│   => [tracks...]           │
└───────────┬────────────────┘
            │
            │ owns a list of
            ▼
┌─────────────────────────┐
│ Track(title, artist)    │
│                         │
│ - title                 │
│ - artist                │
│ - format                │
│   => "TITLE by ARTIST"  │
└─────────────────────────┘
```

_Also design the interface of each class in more detail._

```ruby
class Diary
  def initialize
    @entries = []
    @mobile_numbers = []
  end

  def add_entry(entry) 
  end

  def add_todo(todo)

  def list_entries
    @entries
  end

  def diary_entries_based_speed(minutes, wpm)
  end
  
  def list_mobile_numbers
    # if an entry is 11 numbers then throw into mobile_numbers array
  end
end

class todo
  def initialize
    @todo = []
    @completed_todos = []
  end

  def add(todo)
  end

  def marked_complete
  end

  def list
  end
end
```

## 3. Create Examples as Integration Tests

_Create examples of the classes being used together in different situations and
combinations that reflect the ways in which the system will be used._

```ruby
# EXAMPLE

# Gets all tracks
diary = Diary.new
todo = Todo.new
todo.add("my todo")
result = todo.marked_complete
diary.add_todo(result) # adds todos marked as complete
expect(diary.list_entries).to eq [result] || [todo] ?


```

## 4. Create Examples as Unit Tests

_Create examples, where appropriate, of the behaviour of each relevant class at
a more granular level of detail._

```ruby

diary = Diary.new
diary.add("my entry")
expect(diary.list_entries).to eq "my entry" || []

diary = Diary.new
diary.add_entry("aphex 07927829971")
expect(diary.list_mobile_numbers).to eq ["07927829971"]

diary = Diary.new
diary.add_entry("aphex 07927829971")
diary.add_entry("twin 07927829972")
expect(diary.list_mobile_numbers).to eq ["07927829971", "07927829972"]

diary = Diary.new
diary.add("my entry")
diary.add("more and more and more words")
expect(diary.diary_entries_based_on_speed(3, 2)).to eq "more and more and more words"

todo = Todo.new
todo.add("discover infinte")
expect(todo.list).to eq "discover infinite"



```

_Encode each example as a test. You can add to the above list as you go._

## 5. Implement the Behaviour

_After each test you write, follow the test-driving process of red, green,
refactor to implement the behaviour._








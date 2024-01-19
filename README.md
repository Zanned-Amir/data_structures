# data_structures

Data structures as part of The Odin Project curriculum

1. HashMap Implementation in Ruby

This repository contains a simple implementation of a HashMap in Ruby.

## HashMap Class

The `HashMap` class is defined in the `hashmap.rb` file. It uses an array of buckets to store key-value pairs and handles collisions using chaining.

### Methods

- `initialize(load_factor = 0.75)`: Initializes a new HashMap with a default load factor of 0.75. The load factor is the threshold at which the HashMap will resize its array of buckets.

- `hash(key)`: Generates a hash for the given key. This is used to determine the index of the bucket where the key-value pair should be stored.

- `set(key, value)`: Stores the given key-value pair in the HashMap. If the key already exists, its value is updated. If the load factor is exceeded as a result of adding the new entry, the HashMap's buckets are resized.

- `get(key)`: Retrieves the value associated with the given key.

## Usage

To use the `HashMap` class, simply require the `hashmap.rb` file in your Ruby script:

````ruby
require_relative 'hashmap'

hash_map = HashMap.new
hash_map.set('key', 'value')
puts hash_map.get('key')  # Outputs: value

2. LinkedList Class

The `LinkedList` class is defined in the `linkedlist.rb` file. It represents a singly linked list.

### Methods

- `initialize`: Initializes a new LinkedList. The list starts out empty.

- `append(value)`: Adds a new node with the given value to the end of the list.

- `prepend(value)`: Adds a new node with the given value to the start of the list.

- `size`: Returns the number of nodes in the list.

- `head`: Returns the first node in the list.

- `tail`: Returns the last node in the list.

- `at(index)`: Returns the node at the given index.

- `pop`: Removes the last node from the list and returns its value.

- `contains?(value)`: Returns true if the list contains a node with the given value, false otherwise.

- `find(value)`: Returns the index of the node with the given value, or nil if not found.

- `to_s`: Returns a string representation of the list.

## Usage

To use the `LinkedList` class, simply require the `linkedlist.rb` file in your Ruby script:

```ruby
require_relative 'linkedlist'

list = LinkedList.new
list.append('value')
puts list.head  # Outputs: value

````

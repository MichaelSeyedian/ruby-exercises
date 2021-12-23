The files in this directory contain several exercises for you to complete.

Before you begin, look at the Ruby Docs ([https://ruby-doc.org/core-2.6.5/](https://ruby-doc.org/core-2.6.5/)) for `Array` ([https://ruby-doc.org/core-2.6.5/Array.html](https://ruby-doc.org/core-2.6.5/Array.html)) and `Hash` ([https://ruby-doc.org/core-2.6.5/Hash.html](https://ruby-doc.org/core-2.6.5/Hash.html)).

Research the listed methods below for each exercise. You will need them to complete the exercises.

The exercises will require you to look up some additional methods not listed here.

An alum has put together a video walk-through of the `arrays.rb` and `advanced_nested_collections` exercise.

Please check them out - you'll learn how to use `binding.pry` to quickly test ideas and assumptions, as well as many other useful approaches to solving problems with code.

- `arrays.rb` walkthrough: [https://youtu.be/RUnd1Uu0AyE](https://youtu.be/RUnd1Uu0AyE)
- `advanced_nested_collections/nesting_spec.rb` walkthrough: [https://youtu.be/9AaElA4elDU](https://youtu.be/9AaElA4elDU)


### Methods you'll need to use for `arrays.rb`

* `[]` ([docs](https://ruby-doc.org/core-2.6.5/Array.html#method-i-5B-5D))
  - Return the value of the specified index.
    - ```my_array[1]```

* `[]=` ([docs](https://ruby-doc.org/core-2.6.5/Array.html#method-i-5B-5D-3D))
  - Assign a value to the specified index. Will overwrite the existing value if the index already has a value.
    - ```my_array[7]= "linz"```

* `<<` ([docs](https://ruby-doc.org/core-2.6.5/Array.html#method-i-3C-3C))
  - (shovel operator) Add a value to the end of an array.
    - ```my_array << "linz"```

* `push` ([docs](https://ruby-doc.org/core-2.6.5/Array.html#method-i-push))
  - Add value(s) to the end of an array.
    - ```my_array.push('zissou', 'linz')```

* `pop` ([docs](https://ruby-doc.org/core-2.6.5/Array.html#method-i-pop))
  - Remove & return the last element.
    - ```my_array.pop```

* `length`/size ([docs](https://ruby-doc.org/core-2.6.5/Array.html#method-i-length))
  - Return the number of elements in an array.
    - ```my_array.length```

* `rotate` ([docs](https://ruby-doc.org/core-2.6.5/Array.html#method-i-rotate))
  - Move the first element to the end of the array. (Creates a copy, rather than changing the existing array.)
    - ```my_array = my_array.rotate```

* `include`? ([docs](https://ruby-doc.org/core-2.6.5/Array.html#method-i-include-3F))
  - Return boolean indicating whether the array contains the specified element.
    - ```my_array.include?("penny")```

* `flatten` ([docs](https://ruby-doc.org/core-2.6.5/Array.html#method-i-flatten))
  - Return a new array with all arrays 'flattened' into one array.
    - ```Ruby
      my_array = ['penny', 'atlas', 'minnow', 'fizz', ['zissou', 'neo']]   # array within an array

      p my_array.flatten  # => ["penny", "atlas", "minnow", "fizz", "zissou", "neo"]  # flattened into a single array
      ```

* `compact` ([docs](https://ruby-doc.org/core-2.6.5/Array.html#method-i-compact))
  - Return a copy of the array(self) with all nil elements removed. (Doesn't remove nil elements from arrays within the array).
    - ```my_array.compact```

* `join` ([docs](https://ruby-doc.org/core-2.6.5/Array.html#method-i-join))
  - Return a string with values from the array joined together. If an argument is specified, the values will be separated by the argument.
    - ```Ruby
      my_array.join  # => "pennyatlasminnowfizz"
      my_array.join(-)  # => "penny-atlas-minnow-fizz"
      ```

* `shift` ([docs](https://ruby-doc.org/core-2.6.5/Array.html#method-i-shift))
  - Remove & return the first element. Alters the existing array.
    - If passed an integer as an argument, will remove & return the number of values specified by the argument.
    - ```Ruby
      my_array.shift  # => "penny"
      p my_array.shift(2)  # => ["penny", "atlas"]
      ```

* `unshift` ([docs](https://ruby-doc.org/core-2.6.5/Array.html#method-i-unshift))
  - Prepend the value(s) passed as an argument(s) to the beginning of the array. Alters the existing array.
    - ```Ruby
      my_array.unshift('zissou', 'neo')  # => ["zissou", "neo", "penny", "atlas", "minnow", "fizz"]
      ```

### methods you'll need to use for `hashes.rb`

* `new(default)`
  - Create a new, empty hash, including an assigned default value for keys that don't exist in the hash.
    - ```Ruby
      new_hash_default = Hash.new("default_value")
      p new_hash_default  # => {}
        p new_hash_default[2]  # => "default_value"
      ```

* `[]`
  - Returns the value associated with the given key, if found.
    - ```my_hash[:small_dog]```

* `[]=`
  - Associates the given value with the given key, returns value.
    - If key already exists, replaces value for that key.
    - If not, the key-value pair are added to the END of the hash.
      - ```my_hash[:captain] = "Zissou"```

* `delete`
  - Deletes a given key & returns its associated value.
    - ```my_hash.delete(:boy_cat)```

* `keys`
  - Returns an array containing the keys in the hash(self).
    - ```my_hash.keys```

* `values`
  - Returns an array containing the values in the hash(self).
    - ```my_hash.values```

* `length/size`
  - Returns the number of key/value pairs in the hash.
    - ```Ruby
      my_hash.length
      my_hash.size
      ```

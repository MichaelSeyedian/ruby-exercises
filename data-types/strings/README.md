The `strings.rb` file has a number of exercises to help you better work with strings in ruby.

Below is a list of methods that will help you complete the exercises - research each of them on the [Ruby Docs for Strings](https://ruby-doc.org/core-2.6.5/String.html) to learn more about what they do and how they are used.

There are additional methods that you will need to complete the exercises; each of these additional methods can be found in the Ruby Docs for Strings.

* `String#capitalize`[docs](https://ruby-doc.org/core-2.6.5/String.html#method-i-capitalize)
  - Make the first letter of the string uppercase & the rest lowercase.
    - ```<string>.capitalize```

* `String#count`[docs](https://ruby-doc.org/core-2.6.5/String.html#method-i-count)
  - Count the number of times that the character(s) passed as the argument occur in the string.
    - ```<string>.count("<character(s)>")```

* `String#concat`[docs](https://ruby-doc.org/core-2.6.5/String.html#method-i-concat)
  - Concatenate the string with another string. Alters the original string, rather than returning a new one.
    - <```string>.concat("<string1>")```

  - Can take multiple arguments.
    - ```<string>.concat ("<string1">, "<string2>")```

* `String#chomp`[docs](https://ruby-doc.org/core-2.6.5/String.html#method-i-chomp)
  - Create a new string, with the part specified in the argument removed from the end of the string.
    - ```<string>.chomp("part_to_remove")```
    - ```"Chomp this string".chomp("this string")  # => "Chomp"```

* `String#chop`[docs](https://ruby-doc.org/core-2.6.5/String.html#method-i-chop)
  - Return a new string with the last character removed.
    - ```"Hi there".chop  # => "Hi ther"```

* `String#delete`[docs](https://ruby-doc.org/core-2.6.5/String.html#method-i-delete)
  - Return a new string with the character(s) specified by the argument removed.
    - ```"One, two, three".delete('e')  # => On, two, thr```

* `String#gsub`[docs](https://ruby-doc.org/core-2.6.5/String.html#method-i-gsub)
  - Return a copy of the string with the first argument replaced by the second argument.
    - ```"One, two, three".gsub('two', 'four')  # => "One, four, three"```

* `String#include?`[docs](https://ruby-doc.org/core-2.6.5/String.html#method-i-include-3F)
  - Return boolean value of whether the string contains the argument.
    - ```"One, two, three".include?('two')  # => true```

* `String#length`[docs](https://ruby-doc.org/core-2.6.5/String.html#method-i-length)
  - Return the number of characters (including spaces) that the string contains.
    - ```"12345 ".length  # => 6```

* `String#reverse`[docs](https://ruby-doc.org/core-2.6.5/String.html#method-i-reverse)
  - Return a copy of the string with the characters in reverse order.
    - ```"ABCDE".reverse  # => "EDCBA"```

* `String#sub`[docs](https://ruby-doc.org/core-2.6.5/String.html#method-i-sub)
  - Return a copy of the string with the *first* instance of the first argument replaced by the second argument. (As opposed to gsub, which replaces all instances)
    - ```"hello".sub('l', '*')  # => "he*lo"```

* `String#strip`[docs](https://ruby-doc.org/core-2.6.5/String.html#method-i-strip)
  - Return a copy of the string with all whitespaces removed from the beginning & end.
    - ```"   all this space   ".strip  # => "all this space"```

* `String#upcase`[docs](https://ruby-doc.org/core-2.6.5/String.html#method-i-upcase)
  - Return a copy of the string with ALL characters capitalized.
    - ```"say it loud".upcase  # => "SAY IT LOUD"```


```

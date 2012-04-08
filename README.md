# Guided Randomness #

## Description ##
Simple gem for Ruby which extends Array class, and gave possibility to pick element from it at random, however with certain probability (probability is given for each element).

Instalation:  

`gem install guided_randomness`


Usage:  

```ruby
require 'guided_randomness'
[1,2,3].get_rand([0.5, 0.3, 0.2])
```

or

```ruby
require 'guided_randomness'
[1,2,3].get_rand([4,12,9])
```
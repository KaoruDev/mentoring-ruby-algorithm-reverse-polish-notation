# Reverse Polish Notation


### Areas of Hurt
- recursion
- algorithms
- linked list / stacks


### Requirements
- Ruby


### Installation
```
git clone git@github.com:KaoruDev/mentoring-ruby-algorithm-reverse-polish-notation
bundle install
```

### Tests
```
bundle exec rspec
```


### Objective

Write a program that evaluates the array into a number in reverse.

### Reference
https://en.wikipedia.org/wiki/Polish_notation

http://www.programcreek.com/2012/12/leetcode-evaluate-reverse-polish-notation/

**NOTE**: the example

```
  ["4", "13", "5", "/", "+"] -> (4 + (13 / 5)) -> 6
```

is in correct, it should be:

```
  ["4", "13", "5", "/", "+"] -> (4 + (5 / 13)) -> 4
```



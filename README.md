# Streeem

It is inspired at https://github.com/matz/streem

ほんとすいませんでした

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'streeem'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install streeem

## Usage

write example.rb

```ruby
require 'streeem'
Streeem.do {|line|
  x = line.to_i
  if x % 15 == 0 then
    "FizzBuzz"
  elsif x % 3 == 0 then
    "Fizz"
  elsif x % 5 == 0 then
    "Buzz"
  else
    x
  end
}
```

```shell
seq 100 | ruby example.rb 
```

## Contributing

1. Fork it ( https://github.com/kyohsuke/streeem/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

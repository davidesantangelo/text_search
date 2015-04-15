# TextSearch
TextSearch allows to count the number of occurrences of a word in a text.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'text_search'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install text_search

## Usage

```ruby
require 'text_search'

# Search from web
text = TextSearch::Web.new('www.google.com',["google"])
text.search
#=> [{"google"=>3}, {"youtube"=>1}]

# Search from text
text = TextSearch::Text.new('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.',["ipsum","test"])
text.search
#=> [{"ipsum"=>2}, {"test"=>0}]

# Show words from text/web
text = TextSearch::Text.new('Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi. Nulla quis sem at nibh elementum imperdiet. Duis sagittis ipsum. Praesent mauris. Fusce nec tellus sed augue semper porta. Mauris massa. Vestibulum lacinia arcu eget nulla. Class aptent taciti sociosqu ad litora torquent per conubia nostra, per inceptos himenaeos.')
text.words
#=> ["lorem", "ipsum", "dolor", "sit", "amet", "consectetur", "adipiscing", "elit", "integer", "nec", "odio", "praesent", "libero", "sed", "cursus", "ante", "dapibus", "diam", "sed", "nisi", "nulla", "quis", "sem", "at", "nibh", "elementum", "imperdiet", "duis", "sagittis", "ipsum", "praesent", "mauris", "fusce", "nec", "tellus", "sed", "augue", "semper", "porta", "mauris", "massa", "vestibulum", "lacinia", "arcu", "eget", "nulla", "class", "aptent", "taciti", "sociosqu", "ad", "litora", "torquent", "per", "conubia", "nostra", "per", "inceptos", "himenaeos"]

```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release` to create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

1. Fork it ( https://github.com/[my-github-username]/text_search/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request

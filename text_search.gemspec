# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'text_search/version'

Gem::Specification.new do |spec|
  spec.name          = "text_search"
  spec.version       = TextSearch::VERSION
  spec.authors       = ["Davide Santangelo"]
  spec.email         = ["davide.santangelo@gmail.com"]

  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "https://rubygems.org"
  end

  spec.summary       = %q{TextSearch allows to count the number of occurrences of a word in a text.}
  spec.description   = %q{TextSearch allows to count the number of occurrences of a word in a text. You can use this gem to search word inside text.}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = ["lib/text_search.rb", "lib/text_search/web.rb", "lib/text_search/text.rb", "lib/text_search/base.rb", "lib/text_search/version.rb"]
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.8"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"

  spec.required_ruby_version = ">= 1.9.3"
  
  spec.add_dependency "open_uri_redirections"
  spec.add_dependency "nokogiri"
end

# coding: utf-8
require_relative './lib/most_beautiful_islands/version'

Gem::Specification.new do |spec|
  spec.name          = "most_beautiful_islands_cli_gem"
  spec.version       = MostBeautifulIslands::VERSION
  spec.authors       = ["johnsontaiwo"]
  spec.email         = ["josseytee@gmail.com"]
  spec.summary       =  'Most beautiful islands in the world.'
  spec.description   = 'Most beautiful islands in the world.'
  spec.homepage      = 'http://rubygems.org/gems/most-beautiful-islands'
  spec.license       = 'MIT'

  

  spec.files         = ['lib/most_beautiful_islands.rb' , 'lib/most_beautiful_islands/cli.rb', 'lib/most_beautiful_islands/islands.rb' , 'config/environment.rb']
  #spec.bindir        = "exe"
  spec.executables   << 'most-beautiful-islands'
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec"
  
  spec.add_develoment_dependency "pry"
  spec.add_development_dependency "nokogiri"
end

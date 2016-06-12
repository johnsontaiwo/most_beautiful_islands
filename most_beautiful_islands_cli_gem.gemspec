# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'most-beautiful-islands-cli-gem/version'

Gem::Specification.new do |spec|
  spec.name          = "most-beautiful-islands-cli-gem"
  spec.version       = MostBeautifulIslands::VERSION
  spec.authors       = ["johnsontaiwo"]
  spec.email         = ["josseytee@gmail.com"]

  spec.summary       = %q{ 16 most beautiful islands in the world.}
  spec.description   = %q{It shows and gives details about 16 most beautiful islands in the world.}
  spec.homepage      = "http://rubygems.org/gems/most_beautiful_islands"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  #if spec.respond_to?(:metadata)
    #spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  #else
   # raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  #end

  spec.files         = `git ls-files `.split($\)
  spec.bindir        = "exe"
  spec.executables   = ["most-beautiful-islands"]
  spec.require_paths = ["lib"]-

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "rspec", ">= 0"
  spec.add_development_dependency "nokogiri", ">= 0"
  spec.add_development_dependency "pry", ">= 0"
end

$LOAD_PATH.push File.expand_path("../lib", __FILE__)
require "simplecov-kick/version"

Gem::Specification.new do |gem|
  gem.name        = "simplecov-kick"
  gem.version     = SimpleCov::Formatter::KickFormatter::VERSION
  gem.platform    = Gem::Platform::RUBY
  gem.authors     = ["Atom", "Christoph Olszowka"]
  gem.email       = ["christoph at olszowka de"]
  gem.homepage    = "https://github.com/AtomGrafiks/simplecov-html"
  gem.description = %(Custom HTML formatter for SimpleCov code coverage tool for ruby 1.9+)
  gem.summary     = gem.description
  gem.license     = "MIT"

  gem.required_ruby_version = ">= 1.8.7"
  gem.add_development_dependency "bundler", "~> 1.9"

  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  gem.executables   = `git ls-files -- bin/*`.split("\n").map { |f| File.basename(f) }
  gem.require_paths = ["lib"]
end

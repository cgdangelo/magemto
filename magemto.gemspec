# -*- encoding: utf-8 -*-
require File.expand_path('../lib/magemto/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Charles D'Angelo"]
  gem.email         = ["c.g.dangelo@gmail.com"]
  gem.description   = %q{Gem for interfacing with Magento's APIs.}
  gem.homepage      = "https://github.com/cgdangelo/magemto"

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "magemto"
  gem.require_paths = ["lib"]
  gem.version       = Magemto::VERSION

  gem.add_dependency "oauth"
  gem.add_development_dependency "rspec"
end

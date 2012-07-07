# -*- encoding: utf-8 -*-

Gem::Specification.new do |gem|
  gem.authors       = ["Scott Sikora"]
  gem.email         = ["scott.sikora@gmail.com"]
  gem.description   = "Is the KrispyKreme HotLight on?"
  gem.summary       = ""
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($\)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.name          = "hotlight"
  gem.require_paths = ["lib"]
  gem.version       = "0.0.1"

  gem.add_dependency('json')
  gem.add_development_dependency('rspec')
end

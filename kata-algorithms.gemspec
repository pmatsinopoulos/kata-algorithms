# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'kata/algorithms/version'

Gem::Specification.new do |spec|
  spec.name          = "kata-algorithms"
  spec.version       = Kata::Algorithms::VERSION
  spec.authors       = ["Panayotis Matsinopoulos"]
  spec.email         = ["panayotis@matsinopoulos.gr"]
  spec.description   = %q{A set of algorithms implementation}
  spec.summary       = %q{A series of algorithms implementation. This is more of a practice while reading books about algorithms}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib", File.join('lib', 'kata'),
                               File.join('lib', 'kata', 'algorithms'),
                               File.join('lib', 'kata', 'algorithms', 'sum_of_three')]

  spec.add_dependency 'json'
  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rspec"
end

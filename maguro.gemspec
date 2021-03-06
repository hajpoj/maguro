# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'maguro/version'

Gem::Specification.new do |spec|
  spec.name          = "maguro"
  spec.version       = Maguro::VERSION
  spec.authors       = ["Bottega8", "newyorkpizza"]
  spec.email         = ["haji@bottega8.com"]
  spec.summary       = %q{Bottega8's rails application template.}
  spec.description   = %q{Get stuff done faster.}
  spec.homepage      = "https://bitbucket.org/bottega8/maguro"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   << 'maguro'
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_runtime_dependency 'thor', '~> 0.19'
  spec.add_runtime_dependency 'rails', Maguro::RAILS_VERSION

  spec.add_development_dependency "bundler", "~> 1.6"
  spec.add_development_dependency "rake", '~> 0'
  spec.add_development_dependency "rspec", '~> 0'
end

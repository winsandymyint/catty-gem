# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'catty/version'

Gem::Specification.new do |spec|
  spec.name          = "catty"
  spec.version       = Catty::VERSION
  spec.authors       = ["Sandy"]
  spec.email         = ["winsandymyint@gmail.com"]
  spec.summary       = %q{Convert everyday boring English into catty speak!}
  spec.description   = %q{English to Catty translations}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency 'engtagger'
  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency 'rspec'
end

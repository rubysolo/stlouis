# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'st_louis/version'

Gem::Specification.new do |spec|
  spec.name          = "stlouis"
  spec.version       = StLouis::VERSION
  spec.authors       = ["Solomon White", "Mike Pack", "Jeffrey Matthias"]
  spec.email         = ["rubysolo@gmail.com", "mikepackdev@gmail.com", "jeffrey@matthias.org"]
  spec.description   = %q{STL Manipulation Library}
  spec.summary       = %q{STL Manipulation Library}
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end

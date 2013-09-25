# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'paginator/version'

Gem::Specification.new do |spec|
  spec.name          = "paginator"
  spec.version       = Paginator::VERSION::STRING
  spec.authors       = ["Jeremy Marc"]
  spec.email         = ["jeremy.marc@me.com"]
  spec.description   = %q{This gem is a simple paginator for Enumerable collections}
  spec.summary       = %q{You enumerate it we will simply paginate it}
  spec.homepage      = "https://github.com/jeremymarc/paginator"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rspec"
  spec.add_development_dependency "rake"
end

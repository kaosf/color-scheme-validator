# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)

Gem::Specification.new do |spec|
  spec.name          = "color-scheme-validator"
  spec.version       = "0.3.0"
  spec.authors       = ["ka"]
  spec.email         = ["ka.kaosf@gmail.com"]

  spec.summary       = %q{Color scheme validator for Rails.}
  spec.description   = %q{Color scheme validator for Rails.}
  spec.homepage      = "https://github.com/kaosf/color-scheme-validator"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency("activemodel", "~> 4.0")

  spec.add_development_dependency "bundler", "~> 1.10"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "test-unit", "~> 3.1.3"
end

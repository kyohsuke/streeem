# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'streeem/version'

Gem::Specification.new do |spec|
  spec.name          = "streeem"
  spec.version       = Streeem::VERSION
  spec.authors       = ["Keisuke Kawahara"]
  spec.email         = ["kyohsuke@conafie.jp"]
  spec.summary       = %q{Streeem - stream based concurrent scripting for ruby}
  spec.description   = %q{Streeem - stream based concurrent scripting for ruby. It is inspired at Streem. FYI: it's *joke* gem.}
  spec.homepage      = "https://github.com/kyohsuke/streeem"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0")
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
end

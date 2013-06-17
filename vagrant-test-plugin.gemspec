# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'vagrant-test-plugin/version'



Gem::Specification.new do |spec|
  spec.name          = "vagrant-test-plugin"
  spec.version       = VagrantTestPlugin::VERSION
  spec.authors       = ["Andrew Gross"]
  spec.email         = ["andrew@yipit.com"]
  spec.description   = "foo"
  spec.summary       = "bar"
  spec.homepage      = ""
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ["lib"]

  spec.add_dependency "ridley", ">= 1.1.1"

  spec.add_development_dependency "bundler", "~> 1.3"
  spec.add_development_dependency "rake"
end

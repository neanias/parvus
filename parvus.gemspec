# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'parvus/version'

Gem::Specification.new do |spec|
  spec.name                  = 'parvus'
  spec.version               = Parvus::VERSION
  spec.authors               = ['William Mathewson']
  spec.email                 = ['wncmathewson@me.com']
  spec.summary               = 'Yet another URL shortening gem'
  # spec.description         = 'TODO: Write a longer description. Optional.'
  spec.homepage              = 'https://github.com/neanias/parvus'
  spec.license               = 'MIT'
  spec.required_ruby_version = '>= 1.9.3'

  spec.files                 = `git ls-files -z`.split("\x0")
  spec.executables           = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files            = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths         = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.7'
  spec.add_development_dependency 'rake', '~> 10.0'

  spec.add_runtime_dependency 'httparty', '~> 0.13'
  spec.add_runtime_dependency 'thor', '~> 0.19'
end

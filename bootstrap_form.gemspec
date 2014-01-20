# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'bootstrap_form/version'

Gem::Specification.new do |spec|
  spec.name          = 'bootstrap_form'
  spec.version       = BootstrapForm::VERSION
  spec.authors       = ['Tate Johnson']
  spec.email         = ['tate@tatey.com']
  spec.summary       = %q{Very simple form builder that renders inline errors.}
  spec.homepage      = "https://github.com/tatey/bootstrap_form"
  spec.license       = "MIT"

  spec.files         = `git ls-files`.split($/)
  spec.executables   = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files    = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_dependency 'actionpack', '>= 4.0.0'
  spec.add_development_dependency 'bundler', '~> 1.5'
  spec.add_development_dependency 'rake'
end

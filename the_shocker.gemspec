lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include? lib
require 'the_shocker/version'

Gem::Specification.new do |spec|
  spec.name = 'the_shocker'
  spec.version = TheShocker::VERSION
  spec.authors = ['Long Huynh']
  spec.email = ['long@longkhuynh.com']
  spec.summary = 'A collections of pry add-ons for Rails development'
  spec.description = 'Pry addons for Rails Development'
  spec.homepage = 'https://github.com/longh957/the_shocker.git'
  spec.license = 'MIT'

  spec.files = `git ls-files -z`.split("\x0")
  spec.executables = spec.files.grep(%r{^bin/}) { |f| File.basename(f) }
  spec.test_files = spec.files.grep(%r{^(test|spec|features)/})
  spec.require_paths = ['lib']

  spec.add_development_dependency 'bundler', '~> 1.12', '>= 1.12.5'
  spec.add_development_dependency 'rake', '~> 11.2', '>= 11.2.2'

  spec.required_ruby_version = '>= 2.2.0'
  spec.add_runtime_dependency 'railties', '>= 4.0.0', '> 5.3.x'
  spec.add_runtime_dependency 'pry', '~> 0.10'
  spec.add_runtime_dependency 'pry-rails', '~> 0.3'
  spec.add_runtime_dependency 'pry-doc', '~> 0.8'
  spec.add_runtime_dependency 'pry-stack_explorer', '~> 0.4.9'
  spec.add_runtime_dependency 'pry-byebug', '~> 3.4'
  spec.add_runtime_dependency 'pry-coolline', '~> 0.2'
  spec.add_runtime_dependency 'pry-rescue', '~> 1.4', '>= 1.4.4'
  spec.add_runtime_dependency 'pry-clipboard', '~> 0.1'
  spec.add_runtime_dependency 'hirb', '~> 0.7'
  spec.add_runtime_dependency 'awesome_print', '~> 1.7', '>= 1.7.0'
end

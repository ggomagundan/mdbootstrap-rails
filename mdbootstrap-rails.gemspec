# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'mdbootstrap/rails/version'

Gem::Specification.new do |spec|
  spec.name          = "mdbootstrap-rails"
  spec.version       = Mdbootstrap::Rails::VERSION
  spec.authors       = ["ggomagundan"]
  spec.email         = ["ggogun@gmail.com"]

  spec.summary       = %q{Gem for mdbootstrap}
  spec.description   = %q{easy to use for mdbootstrap on rails projects.}
  spec.homepage      = "https://github.com/ggomagundan/mdbootstrap-rails"
  spec.license       = "MIT"

  # Prevent pushing this gem to RubyGems.org by setting 'allowed_push_host', or
  # delete this section to allow pushing this gem to any host.
  if spec.respond_to?(:metadata)
    spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"
  else
    raise "RubyGems 2.0 or newer is required to protect against public gem pushes."
  end

  spec.files         = `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_dependency "railties", ">= 3.2", "< 5.1"

  spec.add_development_dependency "bundler", "~> 1.7"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "activesupport"
  spec.add_development_dependency "sass-rails"
  spec.add_runtime_dependency "font-awesome-rails", "~> 4.7"
end

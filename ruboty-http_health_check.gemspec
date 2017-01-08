# coding: utf-8
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'ruboty/http_health_check/version'

Gem::Specification.new do |spec|
  spec.name          = "ruboty-http_health_check"
  spec.version       = Ruboty::HttpHealthCheck::VERSION
  spec.authors       = ["r_takaishi"]
  spec.email         = ["ryo.takaishi.0@gmail.com"]

  spec.summary       = 'Health check for rubyty by http'
  spec.description   = 'Health check for rubyty by http'
  spec.homepage      = "http://repl.info"
  spec.license       = "MIT"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = "exe"
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ["lib"]

  spec.add_development_dependency "bundler", "~> 1.13"
  spec.add_development_dependency "rake", "~> 10.0"
  spec.add_development_dependency "minitest", "~> 5.0"

  spec.add_dependency 'webrick'
end

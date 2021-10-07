lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'gamefic-clothing/version'
require 'date'

Gem::Specification.new do |spec|
  spec.name          = 'gamefic-clothing'
  spec.version       = Gamefic::Clothing::VERSION
  spec.date          = Date.today.strftime("%Y-%m-%d")
  spec.summary       = 'A Gamefic library'
  spec.authors       = ['Fred Snyder']
  spec.license       = 'MIT'
  spec.files         = Dir['lib/**/*.rb']

  spec.add_runtime_dependency 'gamefic', '~> 2.0'
  spec.add_runtime_dependency 'gamefic-standard', '~> 2.0'

  spec.add_development_dependency 'gamefic-sdk', '~> 2.0'
  spec.add_development_dependency 'rake', '~> 12.3'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'simplecov', '~> 0.14'
end

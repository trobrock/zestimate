# frozen_string_literal: true

require_relative 'lib/zestimate/version'

Gem::Specification.new do |spec|
  spec.name          = 'zestimate'
  spec.version       = Zestimate::VERSION
  spec.authors       = ['Trae Robrock']
  spec.email         = ['trobrock@gmail.com']

  spec.summary       = 'A simple tool to grab the price estimate of a property'
  spec.description   = 'A simple tool to grab the price estimate of a property'
  spec.homepage      = 'https://github.com/trobrock/zestimate'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = spec.homepage

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'nokogiri'
  spec.add_dependency 'httparty'
end

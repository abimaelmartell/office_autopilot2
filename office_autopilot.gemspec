# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "office_autopilot2/version"

Gem::Specification.new do |s|

  s.add_development_dependency('rake', '~> 0.8')
  s.add_development_dependency('rspec', '~> 2.5')
  s.add_development_dependency('webmock', '~> 1.6')

  s.add_runtime_dependency('httparty', '~> 0.7')
  s.add_runtime_dependency('builder', '>= 2.1.2')
  s.add_runtime_dependency('nokogiri', '~> 1.4')

  s.name        = "office_autopilot2"
  s.version     = OfficeAutopilot2::VERSION
  s.platform    = Gem::Platform::RUBY
  s.authors     = ["Abimael Martell", "Prashant Nadarajan"]
  s.email       = ["abimex@gmail.com", "prashant.nadarajan@gmail.com"]
  s.homepage    = "https://github.com/abimaelmartell/office_autopilot2"
  s.summary     = %q{Ruby wrapper for the OfficeAutopilot API}
  s.description = %q{A (better) Ruby wrapper for the OfficeAutopilot API}

  s.files         = `git ls-files`.split("\n")
  s.test_files    = `git ls-files -- {test,spec,features}/*`.split("\n")
  s.executables   = `git ls-files -- bin/*`.split("\n").map{ |f| File.basename(f) }
  s.require_paths = ["lib"]
end

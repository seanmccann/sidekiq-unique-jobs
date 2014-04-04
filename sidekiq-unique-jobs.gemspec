# -*- encoding: utf-8 -*-
require File.expand_path('../lib/sidekiq-unique-jobs/version', __FILE__)

Gem::Specification.new do |gem|
  gem.authors       = ["Mikael Henriksson"]
  gem.email         = ["mikael@zoolutions.se"]
  gem.description   = gem.summary = "The unique jobs that were removed from sidekiq"
  gem.homepage      = "https://github.com/mhenrixon/sidekiq-unique-jobs"
  gem.license       = "LGPL-3.0"

  # gem.executables   = ['']
  gem.files         = `git ls-files`.split("\n")
  gem.test_files    = `git ls-files -- test/*`.split("\n")
  gem.name          = "sidekiq-unique-jobs"
  gem.require_paths = ["lib"]
  gem.version       = SidekiqUniqueJobs::VERSION
  gem.add_dependency             'sidekiq', '>=3.0.0'
  gem.add_dependency             'mock_redis'
  gem.add_development_dependency 'rspec', '~> 3.0.0.beta'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'rspec-sidekiq'
  gem.add_development_dependency 'activesupport', '~> 3'
  gem.add_development_dependency 'simplecov'
end

# frozen_string_literal: true

require './lib/microc/version'

Gem::Specification.new do |s|
  s.name        = 'microc'
  s.version     = Microc::VERSION
  s.summary     = 'Micro C Interpreter'
  s.description = 'Run subset of C in Ruby'

  s.platform              = Gem::Platform::RUBY
  s.required_ruby_version = '>= 2.7.1'

  s.license = 'GPL-2.0'

  s.authors  = ['Kowalski Dark']
  s.email    = ['DarkKowalski2012@gmail.com']
  s.homepage = 'https://github.com/darkkowalski/microc'

  s.files        = Dir['bin/**/*', 'lib/**/*', 'LICENSE', 'README.md']
  s.require_path = 'lib'

  s.bindir      = 'bin'
  s.executables = ['microc']

  s.metadata = {
    'bug_tracker_uri' => 'https://github.com/darkkowalski/microc/issues'
  }

  s.add_development_dependency 'ci_reporter_minitest', '~> 1.0.0'
  s.add_development_dependency 'minitest', '~> 5.14.1'
  s.add_development_dependency 'rake', '~> 13.0.1'
end

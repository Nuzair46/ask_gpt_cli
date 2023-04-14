# frozen_string_literal: true

require_relative 'lib/ask_gpt_cli/version'

Gem::Specification.new do |spec|
  spec.name = 'ask_gpt_cli'
  spec.version = AskGptCli::VERSION
  spec.authors = ['Nuzair46']
  spec.email = ['nuzer501@gmail.com']

  spec.summary = 'A ruby gem to ask OpenAI GPT API with context and history from command line'
  spec.homepage = 'https://github.com/Nuzair46/ask_gpt_cli'

  spec.license = 'MIT'
  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://github.com/Nuzair46/ask_gpt_cli'
  spec.required_ruby_version = '>= 3.1'

  spec.bindir = 'exe'
  spec.files = Dir['lib/**/*', 'exe/*']
  spec.executables = ['ask_gpt_cli']
  spec.require_paths = ['lib']

  spec.add_dependency 'ask_gpt', '~> 1.2'
end

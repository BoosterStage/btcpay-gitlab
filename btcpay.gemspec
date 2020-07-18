# frozen_string_literal: true

require_relative 'lib/btcpay/version'

Gem::Specification.new do |spec|
  spec.name          = 'btcpay'
  spec.version       = BtcPay::VERSION
  spec.authors       = ['snogrammer']
  spec.email         = ['btcpay-gem@snogram.com']

  spec.summary       = 'BTCPay Server v1 API wrapper. Be your own Bitpay!'
  spec.homepage      = 'https://docs.btcpayserver.org/API/Greenfield/v1/'
  spec.license       = 'MIT'
  spec.required_ruby_version = Gem::Requirement.new('>= 2.3.0')

  spec.metadata['allowed_push_host'] = "TODO: Set to 'http://mygemserver.com'"

  spec.metadata['homepage_uri'] = spec.homepage
  spec.metadata['source_code_uri'] = 'https://gitlab.com/snogrammer/btpay'
  spec.metadata['changelog_uri'] = 'https://gitlab.com/snogrammer/btpay/CHANGELOG.md'

  # Specify which files should be added to the gem when it is released.
  # The `git ls-files -z` loads the files in the RubyGem that have been added into git.
  spec.files = Dir.chdir(File.expand_path(__dir__)) do
    `git ls-files -z`.split("\x0").reject { |f| f.match(%r{^(test|spec|features)/}) }
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'flexirest', '~> 1.9', '< 2.0'

  spec.add_development_dependency 'bundler', '~> 2.0'
  spec.add_development_dependency 'pry', '> 0'
  spec.add_development_dependency 'rubocop', '> 0'
  spec.add_development_dependency 'simplecov',  '> 0'
  spec.add_development_dependency 'vcr', '~> 6.0'
  spec.add_development_dependency 'webmock', '~> 3.8'
end
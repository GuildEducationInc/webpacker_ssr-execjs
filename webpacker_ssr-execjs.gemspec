
# frozen_string_literal: true

lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'webpacker_ssr/execjs/version'

Gem::Specification.new do |spec|
  spec.name          = 'webpacker_ssr-execjs'
  spec.version       = WebpackerSSR::ExecJS::VERSION
  spec.authors       = ['Stafford Brunk']
  spec.email         = ['stafford@guildeducation.com']

  spec.summary       = 'ExecJS renderer for webpacker_ssr'
  spec.description   = 'Use ExecJS to perform server side rendering with webpacker_ssr'
  spec.homepage      = "https://github.com/GuildEducationInc/webpacker_ssr-execjs"

  spec.files         = `git ls-files -z`.split("\x0").reject do |f|
    f.match(%r{^(test|spec|features)/})
  end
  spec.bindir        = 'exe'
  spec.executables   = spec.files.grep(%r{^exe/}) { |f| File.basename(f) }
  spec.require_paths = ['lib']

  spec.add_dependency 'execjs'

  spec.add_development_dependency 'bundler', '~> 1.16.a'
  spec.add_development_dependency 'rake', '~> 10.0'
  spec.add_development_dependency 'rspec', '~> 3.0'
  spec.add_development_dependency 'rubocop', '~> 0.52.1'
end

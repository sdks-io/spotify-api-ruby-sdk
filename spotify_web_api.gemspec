Gem::Specification.new do |s|
  s.name = 'spotify-api-sdk'
  s.version = '1.0.0'
  s.summary = 'SDK for using Spotify API'
  s.description = 'You can use Spotify\'s Web API to discover music and podcasts, manage your Spotify library, control audio playback, and much more. Browse our available Web API endpoints using the sidebar at left, or via the navigation bar on top of this page on smaller screens.'
  s.authors = ['developer sdksio']
  s.email = ['developer+sdksio@apimatic.io']
  s.homepage = 'https://spotify-poc.pages.dev/'
  s.licenses = ['MIT']
  s.metadata  = {
}

  s.add_dependency('apimatic_core_interfaces', '~> 0.2.1')
  s.add_dependency('apimatic_core', '~> 0.3.9')
  s.add_dependency('apimatic_faraday_client_adapter', '~> 0.1.4')
  s.required_ruby_version = ['>= 2.6']
  s.files = Dir['{bin,lib,man,test,spec}/**/*', 'README*', 'LICENSE*']
  s.require_paths = ['lib']
end

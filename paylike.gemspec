Gem::Specification.new do |s|
  s.name        = 'paylike'
  s.version     = '0.1.7'
  s.date        = '2016-12-16'
  s.summary     = 'Paylike gem'
  s.description = 'An implementation of Paylike API'
  s.authors     = ['Kostas Lamprou']
  s.email       = 'lamprou@live.com'
  s.license     = 'MIT'
  s.files       = ['lib/paylike.rb', 'lib/paylike/configuration.rb', 'lib/paylike/endpoints.rb', 'lib/paylike/api.rb', 'lib/paylike/request.rb', 'lib/paylike/response.rb']
  s.homepage    = 'http://rubygems.org/gems/paylike'

    s.add_dependency('unirest', '~> 1.0')

end
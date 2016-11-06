lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'selenium-cucumber/version'
Gem::Specification.new do |s|
  s.name        = 'selenium-cucumber'
  s.version     = Selenium::Cucumber::VERSION
  s.date        = Time.now
  s.platform    = Gem::Platform::RUBY
  s.licenses    = ['MIT']
  s.summary     = 'SELENIUM WEBDRIVER WITH RUBY & CUCUMBER'
  s.description = 'Behavior driven development (BDD) approach to write automation test script to test Web and Android applications.'
  s.authors     = 'Sameer Sawant'
  s.homepage    = 'http://seleniumcucumber.info/'
  s.email       = 'sameersawant222@gmail.com'
  s.files       = Dir['lib/**/*']
  s.files      += Dir['bin/*']
  s.files      += Dir['doc/*']
  s.files      += Dir['features-skeleton/**/*']
  s.files      += Dir['example/**/*']
  s.executables   = s.files.grep(%r{^bin/}) { |f| File.basename(f) }
  s.test_files    = s.files.grep(%r{^(test|spec|features)/})
  s.require_paths = ['lib']
  s.post_install_message = 'Thank you for installing selenium-cucumber gem.'

  s.required_ruby_version = '>= 2.0.0'
  s.add_runtime_dependency 'cucumber', '>= 2.3.0'
  s.add_runtime_dependency 'selenium-webdriver', '>= 3.0.0'
  s.add_runtime_dependency 'chunky_png', '>= 1.3.5'
  s.add_runtime_dependency 'appium_lib', '>= 8.0.2'
  s.add_runtime_dependency 'rspec', '>= 3.4.0'
  s.add_development_dependency 'pry'
  # uncomment if you'd like runtime, development should be fine
  # s.add_runtime_dependency 'pry'
end

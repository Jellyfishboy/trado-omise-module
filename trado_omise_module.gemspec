$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "trado_omise_module/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "trado_omise_module"
  s.version     = TradoOmiseModule::VERSION
  s.authors     = ["Tom Dallimore"]
  s.email       = ["me@tomdallimore.com"]
  s.homepage    = "http://trado.io"
  s.summary     = "Module for Paypal payment functionality in the Trado Ecommerce platform."
  s.description = "Module for Paypal payment functionality in the Trado Ecommerce platform."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails", "~> 4.2.6"

  s.add_development_dependency "sqlite3"
end

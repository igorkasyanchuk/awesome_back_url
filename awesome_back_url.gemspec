$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "awesome_back_url/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "awesome_back_url"
  spec.version     = AwesomeBackUrl::VERSION
  spec.authors     = ["Igor Kasyanchuk"]
  spec.email       = ["igorkasyanchuk@gmail.com"]
  spec.homepage    = "https://github.com/igorkasyanchuk/awesome_back_url"
  spec.summary     = "Better back URL for your Rails applications."
  spec.description = "Better back URL for your Rails applications."
  spec.license     = "MIT"

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails"
  spec.add_development_dependency "sqlite3"
  spec.add_development_dependency "pry"
  spec.add_development_dependency 'minitest'
end

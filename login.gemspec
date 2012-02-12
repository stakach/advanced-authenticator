$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "login/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "login"
  s.version     = Login::VERSION
  s.authors     = ["Stephen von Takach"]
  s.email       = ["steve@advancedcontrol.com.au"]
  s.homepage    = "http://advancedcontrol.com.au/"
  s.summary     = "Provides common login code for ACA and cotag applications."
  s.description = "Provides common login code for ACA and cotag applications."

  s.files = Dir["{app,config,db,lib}/**/*"] + ["CC-LICENSE", "Rakefile", "README.textile"]
  s.test_files = Dir["test/**/*"]

  s.add_dependency "rails"
  s.add_dependency "encryptor"
  s.add_dependency "bcrypt-ruby"
  s.add_dependency "net-ldap"

  s.add_development_dependency "sqlite3"
end

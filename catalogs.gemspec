# frozen_string_literal: true

$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "catalogs/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |spec|
  spec.name        = "catalogs"
  spec.version     = Catalogs::VERSION
  spec.authors     = ["Eduardo Figarola"]
  spec.email       = ["eduardofigarola@gmail.com"]
  spec.homepage    = "https://github.com/efigarolam/catalogs"
  spec.summary     = "Rails Catalogs Plugin"
  spec.description = "A way to improve your website dropdowns values in a standard way"
  spec.license     = "MIT"

  # Prevent pushing this gem to RubyGems.org. To allow pushes either set the 'allowed_push_host'
  # to allow pushing to a single host or delete this section to allow pushing to any host.
  if spec.respond_to?(:metadata)
    spec.metadata["allowed_push_host"] = "https://rubygems.org"
  else
    raise "RubyGems 2.0 or newer is required to protect against " \
      "public gem pushes."
  end

  spec.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  spec.add_dependency "rails", "~> 6", "> 5"

  spec.add_development_dependency "sqlite3", "~> 1.4"
  spec.add_development_dependency "rubocop", "~> 0.74"
  spec.add_development_dependency "rubocop-rails_config", "~> 0.7"
end

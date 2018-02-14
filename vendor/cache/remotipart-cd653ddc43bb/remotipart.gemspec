# -*- encoding: utf-8 -*-
# stub: remotipart 1.3.1 ruby lib

Gem::Specification.new do |s|
  s.name = "remotipart".freeze
  s.version = "1.3.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Greg Leppert".freeze, "Steve Schwartz".freeze]
  s.date = "2016-10-06"
  s.description = "Remotipart is a Ruby on Rails gem enabling remote multipart forms (AJAX style file uploads) with jquery-rails.\n    This gem augments the native Rails 3 jQuery-UJS remote form function enabling asynchronous file uploads with little to no modification to your application.\n    ".freeze
  s.email = ["greg@formasfunction.com".freeze, "steve@alfajango.com".freeze]
  s.extra_rdoc_files = ["LICENSE".freeze, "README.rdoc".freeze]
  s.files = [".document".freeze, "CONTRIBUTING.md".freeze, "Gemfile".freeze, "History.rdoc".freeze, "LICENSE".freeze, "README.rdoc".freeze, "Rakefile".freeze, "VERSION_COMPATIBILITY.rdoc".freeze, "lib/generators/remotipart/install/install_generator.rb".freeze, "lib/remotipart.rb".freeze, "lib/remotipart/middleware.rb".freeze, "lib/remotipart/rails.rb".freeze, "lib/remotipart/rails/engine.rb".freeze, "lib/remotipart/rails/railtie.rb".freeze, "lib/remotipart/rails/version.rb".freeze, "lib/remotipart/render_overrides.rb".freeze, "lib/remotipart/request_helper.rb".freeze, "lib/remotipart/view_helper.rb".freeze, "remotipart.gemspec".freeze, "vendor/assets/javascripts/jquery.iframe-transport.js".freeze, "vendor/assets/javascripts/jquery.remotipart.js".freeze]
  s.homepage = "http://opensource.alfajango.com/remotipart/".freeze
  s.rubygems_version = "2.6.14".freeze
  s.summary = "Remotipart is a Ruby on Rails gem enabling remote multipart forms (AJAX style file uploads) with jquery-rails.".freeze

  s.installed_by_version = "2.6.14" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<jeweler>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<jeweler>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<jeweler>.freeze, [">= 0"])
  end
end

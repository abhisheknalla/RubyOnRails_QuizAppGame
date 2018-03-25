# -*- encoding: utf-8 -*-
# stub: admin_view 0.1.0 ruby lib

Gem::Specification.new do |s|
  s.name = "admin_view".freeze
  s.version = "0.1.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Marko Anastasov".freeze, "Darko Fabijan".freeze]
  s.date = "2011-09-19"
  s.description = "Rails 3 generator of admin views and controllers for existing models.".freeze
  s.email = ["devs@renderedtext.com".freeze]
  s.homepage = "http://github.com/renderedtext/admin_view".freeze
  s.rubyforge_project = "admin_view".freeze
  s.rubygems_version = "2.6.11".freeze
  s.summary = "Rails 3 generator of admin views and controllers for existing models.".freeze

  s.installed_by_version = "2.6.11" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rails>.freeze, [">= 3.0"])
      s.add_runtime_dependency(%q<rspec-rails>.freeze, [">= 2.4.0"])
      s.add_runtime_dependency(%q<meta_search>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<kaminari>.freeze, [">= 0"])
    else
      s.add_dependency(%q<rails>.freeze, [">= 3.0"])
      s.add_dependency(%q<rspec-rails>.freeze, [">= 2.4.0"])
      s.add_dependency(%q<meta_search>.freeze, [">= 0"])
      s.add_dependency(%q<kaminari>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<rails>.freeze, [">= 3.0"])
    s.add_dependency(%q<rspec-rails>.freeze, [">= 2.4.0"])
    s.add_dependency(%q<meta_search>.freeze, [">= 0"])
    s.add_dependency(%q<kaminari>.freeze, [">= 0"])
  end
end

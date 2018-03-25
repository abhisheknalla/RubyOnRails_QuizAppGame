# -*- encoding: utf-8 -*-
# stub: meta_search 0.5.4 ruby lib

Gem::Specification.new do |s|
  s.name = "meta_search".freeze
  s.version = "0.5.4"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Ernie Miller".freeze]
  s.date = "2010-07-28"
  s.description = "\n      Allows simple search forms to be created against an AR3 model\n      and its associations, has useful view helpers for sort links\n      and multiparameter fields as well.\n    ".freeze
  s.email = "ernie@metautonomo.us".freeze
  s.extra_rdoc_files = ["LICENSE".freeze, "README.rdoc".freeze]
  s.files = ["LICENSE".freeze, "README.rdoc".freeze]
  s.homepage = "http://metautonomo.us/projects/metasearch/".freeze
  s.rdoc_options = ["--charset=UTF-8".freeze]
  s.rubygems_version = "2.6.11".freeze
  s.summary = "ActiveRecord 3 object-based searching for your form_for enjoyment.".freeze

  s.installed_by_version = "2.6.11" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 3

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_development_dependency(%q<shoulda>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<activerecord>.freeze, [">= 3.0.0.beta4"])
      s.add_runtime_dependency(%q<activesupport>.freeze, [">= 3.0.0.beta4"])
      s.add_runtime_dependency(%q<actionpack>.freeze, [">= 3.0.0.beta4"])
      s.add_runtime_dependency(%q<arel>.freeze, [">= 0.4.0"])
    else
      s.add_dependency(%q<shoulda>.freeze, [">= 0"])
      s.add_dependency(%q<activerecord>.freeze, [">= 3.0.0.beta4"])
      s.add_dependency(%q<activesupport>.freeze, [">= 3.0.0.beta4"])
      s.add_dependency(%q<actionpack>.freeze, [">= 3.0.0.beta4"])
      s.add_dependency(%q<arel>.freeze, [">= 0.4.0"])
    end
  else
    s.add_dependency(%q<shoulda>.freeze, [">= 0"])
    s.add_dependency(%q<activerecord>.freeze, [">= 3.0.0.beta4"])
    s.add_dependency(%q<activesupport>.freeze, [">= 3.0.0.beta4"])
    s.add_dependency(%q<actionpack>.freeze, [">= 3.0.0.beta4"])
    s.add_dependency(%q<arel>.freeze, [">= 0.4.0"])
  end
end

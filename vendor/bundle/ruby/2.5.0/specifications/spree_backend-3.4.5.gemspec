# -*- encoding: utf-8 -*-
# stub: spree_backend 3.4.5 ruby lib

Gem::Specification.new do |s|
  s.name = "spree_backend".freeze
  s.version = "3.4.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Sean Schofield".freeze]
  s.date = "2018-04-10"
  s.description = "Required dependency for Spree".freeze
  s.email = "sean@spreecommerce.com".freeze
  s.homepage = "http://spreecommerce.org".freeze
  s.licenses = ["BSD-3-Clause".freeze]
  s.required_ruby_version = Gem::Requirement.new(">= 2.2.7".freeze)
  s.requirements = ["none".freeze]
  s.rubygems_version = "2.7.7".freeze
  s.summary = "backend e-commerce functionality for the Spree project.".freeze

  s.installed_by_version = "2.7.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<spree_api>.freeze, ["= 3.4.5"])
      s.add_runtime_dependency(%q<spree_core>.freeze, ["= 3.4.5"])
      s.add_runtime_dependency(%q<bootstrap-sass>.freeze, ["~> 3.3"])
      s.add_runtime_dependency(%q<jquery-rails>.freeze, ["~> 4.3"])
      s.add_runtime_dependency(%q<jquery-ui-rails>.freeze, ["~> 6.0.1"])
      s.add_runtime_dependency(%q<select2-rails>.freeze, ["= 3.5.9.1"])
    else
      s.add_dependency(%q<spree_api>.freeze, ["= 3.4.5"])
      s.add_dependency(%q<spree_core>.freeze, ["= 3.4.5"])
      s.add_dependency(%q<bootstrap-sass>.freeze, ["~> 3.3"])
      s.add_dependency(%q<jquery-rails>.freeze, ["~> 4.3"])
      s.add_dependency(%q<jquery-ui-rails>.freeze, ["~> 6.0.1"])
      s.add_dependency(%q<select2-rails>.freeze, ["= 3.5.9.1"])
    end
  else
    s.add_dependency(%q<spree_api>.freeze, ["= 3.4.5"])
    s.add_dependency(%q<spree_core>.freeze, ["= 3.4.5"])
    s.add_dependency(%q<bootstrap-sass>.freeze, ["~> 3.3"])
    s.add_dependency(%q<jquery-rails>.freeze, ["~> 4.3"])
    s.add_dependency(%q<jquery-ui-rails>.freeze, ["~> 6.0.1"])
    s.add_dependency(%q<select2-rails>.freeze, ["= 3.5.9.1"])
  end
end

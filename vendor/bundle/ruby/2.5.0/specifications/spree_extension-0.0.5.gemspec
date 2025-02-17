# -*- encoding: utf-8 -*-
# stub: spree_extension 0.0.5 ruby lib

Gem::Specification.new do |s|
  s.name = "spree_extension".freeze
  s.version = "0.0.5"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Damian Legawiec".freeze]
  s.date = "2017-06-28"
  s.description = "Common tools and helpers for Spree Extensions developers".freeze
  s.email = "damian@sparksolutions.co".freeze
  s.homepage = "https://spreecommerce.org".freeze
  s.licenses = ["BSD-3".freeze]
  s.rubygems_version = "2.7.7".freeze
  s.summary = "Common tools and helpers for Spree Extensions developers".freeze

  s.installed_by_version = "2.7.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<activerecord>.freeze, [">= 4.2"])
    else
      s.add_dependency(%q<activerecord>.freeze, [">= 4.2"])
    end
  else
    s.add_dependency(%q<activerecord>.freeze, [">= 4.2"])
  end
end

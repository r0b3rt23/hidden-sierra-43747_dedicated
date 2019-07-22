# -*- encoding: utf-8 -*-
# stub: twitter_cldr 4.4.3 ruby lib

Gem::Specification.new do |s|
  s.name = "twitter_cldr".freeze
  s.version = "4.4.3"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Cameron Dutro".freeze]
  s.date = "2018-02-03"
  s.description = "Ruby implementation of the ICU (International Components for Unicode) that uses the Common Locale Data Repository to format dates, plurals, and more.".freeze
  s.email = ["cdutro@twitter.com".freeze]
  s.homepage = "http://twitter.com".freeze
  s.licenses = ["Apache-2.0".freeze]
  s.rubygems_version = "2.7.7".freeze
  s.summary = "Ruby implementation of the ICU (International Components for Unicode) that uses the Common Locale Data Repository to format dates, plurals, and more.".freeze

  s.installed_by_version = "2.7.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<camertron-eprun>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<tzinfo>.freeze, [">= 0"])
      s.add_runtime_dependency(%q<cldr-plurals-runtime-rb>.freeze, ["~> 1.0"])
    else
      s.add_dependency(%q<camertron-eprun>.freeze, [">= 0"])
      s.add_dependency(%q<tzinfo>.freeze, [">= 0"])
      s.add_dependency(%q<cldr-plurals-runtime-rb>.freeze, ["~> 1.0"])
    end
  else
    s.add_dependency(%q<camertron-eprun>.freeze, [">= 0"])
    s.add_dependency(%q<tzinfo>.freeze, [">= 0"])
    s.add_dependency(%q<cldr-plurals-runtime-rb>.freeze, ["~> 1.0"])
  end
end

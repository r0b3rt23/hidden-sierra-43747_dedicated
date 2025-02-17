# -*- encoding: utf-8 -*-
# stub: money 6.13.0 ruby lib

Gem::Specification.new do |s|
  s.name = "money".freeze
  s.version = "6.13.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.metadata = { "bug_tracker_uri" => "https://github.com/RubyMoney/money/issues", "changelog_uri" => "https://github.com/RubyMoney/money/blob/master/CHANGELOG.md", "source_code_uri" => "https://github.com/RubyMoney/money/" } if s.respond_to? :metadata=
  s.require_paths = ["lib".freeze]
  s.authors = ["Shane Emmons".freeze]
  s.date = "2018-10-01"
  s.description = "A Ruby Library for dealing with money and currency conversion.".freeze
  s.email = ["shane@emmons.io".freeze]
  s.homepage = "https://rubymoney.github.io/money".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.7".freeze
  s.summary = "A Ruby Library for dealing with money and currency conversion.".freeze

  s.installed_by_version = "2.7.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<i18n>.freeze, ["<= 2", ">= 0.6.4"])
      s.add_development_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<rake>.freeze, [">= 0"])
      s.add_development_dependency(%q<rspec>.freeze, ["~> 3.4"])
      s.add_development_dependency(%q<yard>.freeze, ["~> 0.9.11"])
      s.add_development_dependency(%q<kramdown>.freeze, ["~> 1.1"])
    else
      s.add_dependency(%q<i18n>.freeze, ["<= 2", ">= 0.6.4"])
      s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
      s.add_dependency(%q<rake>.freeze, [">= 0"])
      s.add_dependency(%q<rspec>.freeze, ["~> 3.4"])
      s.add_dependency(%q<yard>.freeze, ["~> 0.9.11"])
      s.add_dependency(%q<kramdown>.freeze, ["~> 1.1"])
    end
  else
    s.add_dependency(%q<i18n>.freeze, ["<= 2", ">= 0.6.4"])
    s.add_dependency(%q<bundler>.freeze, ["~> 1.3"])
    s.add_dependency(%q<rake>.freeze, [">= 0"])
    s.add_dependency(%q<rspec>.freeze, ["~> 3.4"])
    s.add_dependency(%q<yard>.freeze, ["~> 0.9.11"])
    s.add_dependency(%q<kramdown>.freeze, ["~> 1.1"])
  end
end

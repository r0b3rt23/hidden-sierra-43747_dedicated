# -*- encoding: utf-8 -*-
# stub: state_machines-activerecord 0.5.1 ruby lib

Gem::Specification.new do |s|
  s.name = "state_machines-activerecord".freeze
  s.version = "0.5.1"

  s.required_rubygems_version = Gem::Requirement.new(">= 0".freeze) if s.respond_to? :required_rubygems_version=
  s.require_paths = ["lib".freeze]
  s.authors = ["Abdelkader Boudih".freeze, "Aaron Pfeifer".freeze]
  s.date = "2018-03-19"
  s.description = "Adds support for creating state machines for attributes on ActiveRecord".freeze
  s.email = ["terminale@gmail.com".freeze, "aaron@pluginaweek.org".freeze]
  s.homepage = "https://github.com/state-machines/state_machines-activerecord/".freeze
  s.licenses = ["MIT".freeze]
  s.rubygems_version = "2.7.7".freeze
  s.summary = "State machines Active Record Integration".freeze

  s.installed_by_version = "2.7.7" if s.respond_to? :installed_by_version

  if s.respond_to? :specification_version then
    s.specification_version = 4

    if Gem::Version.new(Gem::VERSION) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<state_machines-activemodel>.freeze, [">= 0.5.0"])
      s.add_runtime_dependency(%q<activerecord>.freeze, ["< 6.0", ">= 4.1"])
      s.add_development_dependency(%q<rake>.freeze, ["~> 10.3"])
      s.add_development_dependency(%q<sqlite3>.freeze, ["~> 1.3"])
      s.add_development_dependency(%q<appraisal>.freeze, [">= 1"])
      s.add_development_dependency(%q<minitest>.freeze, [">= 5.4.0"])
      s.add_development_dependency(%q<minitest-reporters>.freeze, [">= 0"])
    else
      s.add_dependency(%q<state_machines-activemodel>.freeze, [">= 0.5.0"])
      s.add_dependency(%q<activerecord>.freeze, ["< 6.0", ">= 4.1"])
      s.add_dependency(%q<rake>.freeze, ["~> 10.3"])
      s.add_dependency(%q<sqlite3>.freeze, ["~> 1.3"])
      s.add_dependency(%q<appraisal>.freeze, [">= 1"])
      s.add_dependency(%q<minitest>.freeze, [">= 5.4.0"])
      s.add_dependency(%q<minitest-reporters>.freeze, [">= 0"])
    end
  else
    s.add_dependency(%q<state_machines-activemodel>.freeze, [">= 0.5.0"])
    s.add_dependency(%q<activerecord>.freeze, ["< 6.0", ">= 4.1"])
    s.add_dependency(%q<rake>.freeze, ["~> 10.3"])
    s.add_dependency(%q<sqlite3>.freeze, ["~> 1.3"])
    s.add_dependency(%q<appraisal>.freeze, [">= 1"])
    s.add_dependency(%q<minitest>.freeze, [">= 5.4.0"])
    s.add_dependency(%q<minitest-reporters>.freeze, [">= 0"])
  end
end

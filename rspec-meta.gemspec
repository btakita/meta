# -*- encoding: utf-8 -*-

Gem::Specification.new do |s|
  s.name = %q{rspec-meta}
  s.version = "0.0.0"

  s.required_rubygems_version = Gem::Requirement.new(">= 0") if s.respond_to? :required_rubygems_version=
  s.authors = ["David Chelimsky", "Chad Humphries"]
  s.date = %q{2009-06-29}
  s.email = %q{dchelimsky@gmail.com;chad.humphries@gmail.com}
  s.extra_rdoc_files = [
    "README.markdown"
  ]
  s.files = [
    "License.txt",
    "README.markdown",
    "Rakefile",
    "VERSION.yml",
    "lib/rspec.rb"
  ]
  s.homepage = %q{http://github.com/rspec/meta}
  s.rdoc_options = ["--charset=UTF-8"]
  s.require_paths = ["lib"]
  s.rubygems_version = %q{1.3.4}
  s.summary = %q{pulls in the other rspec gems}

  if s.respond_to? :specification_version then
    current_version = Gem::Specification::CURRENT_SPECIFICATION_VERSION
    s.specification_version = 3

    if Gem::Version.new(Gem::RubyGemsVersion) >= Gem::Version.new('1.2.0') then
      s.add_runtime_dependency(%q<rspec-core>, ["= 0.0.0"])
      s.add_runtime_dependency(%q<rspec-expectations>, ["= 0.0.0"])
      s.add_runtime_dependency(%q<rspec-mocks>, ["= 0.0.0"])
    else
      s.add_dependency(%q<rspec-core>, ["= 0.0.0"])
      s.add_dependency(%q<rspec-expectations>, ["= 0.0.0"])
      s.add_dependency(%q<rspec-mocks>, ["= 0.0.0"])
    end
  else
    s.add_dependency(%q<rspec-core>, ["= 0.0.0"])
    s.add_dependency(%q<rspec-expectations>, ["= 0.0.0"])
    s.add_dependency(%q<rspec-mocks>, ["= 0.0.0"])
  end
end

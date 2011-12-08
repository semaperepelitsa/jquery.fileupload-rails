# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "jquery.fileupload-rails/version"

Gem::Specification.new do |s|
  s.name        = "jquery.fileupload-rails"
  s.version     = Jquery.fileupload::Rails::VERSION
  s.authors     = ["Semyon Perepelitsa"]
  s.email       = ["sema@sema.in"]
  s.homepage    = ""
  s.summary     = %q{TODO: Write a gem summary}
  s.description = %q{TODO: Write a gem description}

  s.rubyforge_project = "jquery.fileupload-rails"

  s.files         = `git ls-files`.split("\n")

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end

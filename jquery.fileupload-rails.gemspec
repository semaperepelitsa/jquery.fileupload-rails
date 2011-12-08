# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)

Gem::Specification.new do |s|
  s.name        = "jquery.fileupload-rails"
  s.version     = "0.0.1"
  s.authors     = ["Semyon Perepelitsa"]
  s.email       = ["sema@sema.in"]
  s.homepage    = "https://github.com/semaperepelitsa/jquery.fileupload-rails"
  s.summary     = %q{Use jQuery File Upload plugin with Rails 3}
  s.description = %q{This gem packages jQuery File Upload plugin and it's dependencies for Rails asset pipeline.}

  s.rubyforge_project = "jquery.fileupload-rails"

  s.files         = `git ls-files`.split("\n")

  # specify any dependencies here; for example:
  # s.add_development_dependency "rspec"
  # s.add_runtime_dependency "rest-client"
end

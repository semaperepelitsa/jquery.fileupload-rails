# -*- encoding: utf-8 -*-
$:.push File.expand_path("../lib", __FILE__)
require "jquery.fileupload-rails/version"

Gem::Specification.new do |s|
  s.name        = "jquery.fileupload-rails"
  s.version     = JqueryFileUpload::Rails::VERSION
  s.authors     = ["Semyon Perepelitsa"]
  s.email       = ["sema@sema.in"]
  s.homepage    = "https://github.com/semaperepelitsa/jquery.fileupload-rails"
  s.summary     = %q{Use jQuery File Upload plugin with Rails 3}
  s.description = %q{This gem packages jQuery File Upload plugin and it's dependencies for Rails asset pipeline.}

  s.rubyforge_project = "jquery.fileupload-rails"

  s.files         = File.read('Manifest.txt').split("\n")
  s.require_paths = ["lib"]

  s.add_dependency 'sprockets', '~> 2.0'
  s.add_dependency 'jquery-ui-rails'
end

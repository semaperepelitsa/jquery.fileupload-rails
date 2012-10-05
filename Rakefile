require 'json'
require 'bundler/gem_tasks'

DEPENDENCY_HASH = JSON.load(File.read('dependencies.json'))
PROJECT_NAME = "jQuery-File-Upload"

task :submodule do
  sh 'git submodule update --init' unless File.exist?("#{PROJECT_NAME}/README.md")
end

desc "Remove the vendor directory"
task :clean do
  rm_rf 'vendor/assets'
end

desc "Generate the JavaScript assets"
task :javascripts => :submodule do
  target_dir = "vendor/assets/javascripts"
  mkdir_p target_dir
  Rake.rake_output_message 'Generating javascripts'
  DEPENDENCY_HASH.each do |name, dep_modules|
    path = "#{PROJECT_NAME}/js/#{name}.js"
    File.open("#{target_dir}/#{name}.js", "w") do |out|
      dep_modules.each do |mod|
        out.write("//= require #{mod}\n")
      end
      out.write("\n") unless dep_modules.empty?
      source_code = File.read(path)
      out.write(source_code)
    end
  end
end

desc "Clean and then generate everything (default)"
task :assets => [:clean, :javascripts]

task :build => :assets

task :default => :assets


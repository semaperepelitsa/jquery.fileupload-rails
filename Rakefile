require 'json'
require 'bundler/gem_tasks'

DEPENDENCY_HASH = JSON.load(File.read('dependencies.json'))
PROJECT_NAME = "jQuery-File-Upload"

def version
  JSON.load(File.read("#{PROJECT_NAME}/package.json"))['version']
end

task :submodule do
  sh 'git submodule update --init' unless File.exist?("#{PROJECT_NAME}/README.md")
end

def get_js_dependencies(basename)
  dependencies = DEPENDENCY_HASH[basename.sub(/\Ajquery\./, '')]
  if dependencies.nil?
    puts "Warning: No dependencies found for #{basename}"
    dependencies = []
  end
  dependencies = dependencies
    .reject { |dep| dep == 'theme' } # 'theme' pseudo-dependency handled by CSS
    .map { |dep| "jquery.#{dep}" }
  # Make sure we do not package assets with broken dependencies
  dependencies.each do |dep|
    fail "#{basename}: missing #{dep}" unless File.exist? "#{PROJECT_NAME}/ui/#{dep}"
  end
  dependencies
end

def remove_js_extension(path)
  path.chomp(".js")
end

def protect_copyright_notice(source_code)
  # YUI does not minify comments starting with "/*!"
  # The i18n files start with non-copyright comments, so we require a newline
  # to avoid protecting those
  source_code.gsub!(/\A\s*\/\*\r?\n/, "/*!\n")
end

desc "Remove the vendor directory"
task :clean do
  rm_rf 'vendor'
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
      source_code.gsub!('@VERSION', version)
      protect_copyright_notice(source_code)
      out.write(source_code)
    end
  end
end

desc "Clean and then generate everything (default)"
task :assets => [:clean, :javascripts]

task :build => :assets

task :default => :assets


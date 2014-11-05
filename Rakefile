require 'rubygems'
require 'rake'
require 'rake/clean'
require 'rake/extensiontask'

load 'gbarcode.gemspec'

Gem::PackageTask.new(GBarcode::GemSpec) do |pkg|
end

Rake::ExtensionTask.new('gbarcode', GBarcode::GemSpec)

task :default => :spec

desc "Build gem packages"
task :build do
  sh "gem build gbarcode.gemspec"
end

desc "Install gem packages"
task :install => :build do
  sh "gem install gbarcode-*.gem"
end

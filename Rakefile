require 'bundler/gem_tasks'
require 'rake/testtask'

Rake::TestTask.new do |t|
  require 'bundler'
  Bundler.require
  t.libs << 'spec'
  t.pattern = 'spec/**/*_spec.rb'
end

task default: :test

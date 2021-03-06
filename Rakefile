require 'rubygems'
require 'rake'

begin
  require 'jeweler'
  Jeweler::Tasks.new do |gem|
    gem.name = "rspec-meta"
    gem.summary = "pulls in the other rspec gems"
    gem.email = "dchelimsky@gmail.com;chad.humphries@gmail.com"
    gem.homepage = "http://github.com/rspec/meta"
    gem.authors = ["David Chelimsky", "Chad Humphries"]
    gem.add_dependency "rspec-core", "0.0.0"
    gem.add_dependency "rspec-expectations", "0.0.0"
    gem.add_dependency "rspec-mocks", "0.0.0"
    # gem is a Gem::Specification... see http://www.rubygems.org/read/chapter/20 for additional settings
  end

rescue LoadError
  puts "Jeweler (or a dependency) not available. Install it with: sudo gem install jeweler"
end

task :spec do
  system <<-COMMANDS
    cd ../core &&
    echo '================================'
    echo 'Running spec/core suite . . .'
    echo '================================'
    rake spec &&
    cd ../mocks &&
    echo '================================'
    echo 'Running spec/mocks suite . . .'
    echo '================================'
    rake spec &&
    cd ../expectations &&
    echo '================================'
    echo 'Running spec/expectations suite . . .'
    echo '================================'
    rake spec
  COMMANDS
end

task :default => :spec

namespace :git do
  [:status, :pull, :push, :reset, :diff].each do |key|
    command = key == :reset ? "reset --hard" : key.to_s
    desc "git #{command} on all the repos"
    task key do
      ["../meta","../core","../expectations", "../mocks"].each do |repo|
        puts
        puts "=" * 50
        puts "running git #{command} on #{repo}:"
        puts "=" * 50
        puts `cd #{repo} && git #{command}`
      end
    end
  end

  task :st => :status
end

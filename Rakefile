# Add your own tasks in files placed in lib/tasks ending in .rake,
# for example lib/tasks/capistrano.rake, and they will automatically be available to Rake.

require_relative "config/application"
require 'resque/tasks'

task "resque:setup" => :environment do
    ENV['QUEUE'] = '*'
    ENV['TERM_CHILD'] = '1'
    ENV['RESQUE_TERM_TIMEOUT'] = '10'
end
desc "Alias for resque:work (To run workers on Heroku)"
task "jobs:work" => "resque:work"

Rails.application.load_tasks

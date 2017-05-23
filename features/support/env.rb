require 'coveralls'
Coveralls.wear_merged!('rails')

require 'cucumber/rails'

ActionController::Base.allow_rescue = false

begin
  DatabaseCleaner.strategy = :transaction
rescue NameError
  raise 'You need to add database_cleaner to your Gemfile (in the :test group) \
         if you wish to use it.'
end

Cucumber::Rails::Database.javascript_strategy = :truncation

require 'capybara/poltergeist'
Capybara.javascript_driver = :poltergeist

require 'capybara/poltergeist'

Capybara.register_driver :poltergeist do |app|
  Capybara::Poltergeist::Driver.new(app, js_error: false)
end
Capybara.javascript_driver = :poltergeist

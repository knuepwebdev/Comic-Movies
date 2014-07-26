source 'https://rubygems.org'

gem 'rails', '4.0.0'
gem 'pg'
gem 'sass-rails', '~> 4.0.0'
gem 'uglifier', '>= 1.3.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 1.2'
gem 'httparty'
gem 'asset_sync'
gem "paperclip", "~> 4.1"
gem 'aws-sdk'
gem 'newrelic_rpm'

group :doc do
  gem 'sdoc', require: false
end

group :development, :test do
  gem "rspec-rails", "~> 2.14.0"
  gem "factory_girl_rails", "~> 4.2.1"
  gem 'guard-rspec', '~> 4.2.8'
  gem 'guard-spork', '~> 1.5.1'
  gem 'spork-rails', github: 'sporkrb/spork-rails'
  gem 'dotenv-rails'
end

group :test do
  gem "capybara", "~> 2.1.0"
  gem "database_cleaner", "~> 1.0.1"
  gem 'shoulda-matchers'
  gem "faker", "~> 1.1.2"
  gem 'poltergeist'
  gem 'webmock'
end

group :production do
  gem 'rails_12factor'
end

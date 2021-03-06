source 'http://rubygems.org'

gem 'rails', '3.1.3'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

group :production do
  gem 'mysql2'
end

gem 'sqlite3'

gem 'json'

gem 'haml'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.5'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use thin as the web server
gem 'thin'

# Deploy with Capistrano
gem 'capistrano'

# To use debugger
# gem 'ruby-debug'

gem 'rest-client'

gem 'delayed_job_active_record'

# Performance Testing
group :development do
  gem 'ruby-prof'
end

# Testing
group :development, :test do
  gem 'factory_girl_rails', :require => false
  gem 'mocha'
  gem 'rspec-rails'
  gem 'shoulda-matchers', :git => 'git://github.com/thoughtbot/shoulda-matchers.git'
  gem 'cucumber-rails'
  gem 'database_cleaner'
  gem 'capybara'
  gem 'launchy'
  gem 'pickle'
  gem 'simplecov'
  gem 'spork'
end

# Authentication
gem 'devise'

# Authorisation
gem 'declarative_authorization'
group :development do
  gem 'ruby_parser' # for info on authorisation rules
end

source 'http://rubygems.org'

gem 'rails', '3.1.3'

# Bundle edge Rails instead:
# gem 'rails',     :git => 'git://github.com/rails/rails.git'

gem 'sqlite3'

gem 'json'

gem 'haml'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.1.5'
  gem 'coffee-rails', '~> 3.1.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'less-rails'
  gem 'less'
  gem 'haml-bootstrap-rails'
  gem 'twitter-bootstrap-rails'
end

gem 'therubyracer', :platforms => :ruby

gem 'jquery-rails'

gem "boxcar_api", "~> 1.2.0"

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# Use thin as the web server
gem 'thin'

# Deploy with Capistrano
gem 'capistrano'

# To use debugger
# gem 'ruby-debug'

gem 'rest-client'

gem 'daemons'
gem 'delayed_job', :git => 'git://github.com/collectiveidea/delayed_job.git'
gem 'delayed_job_active_record', '~> 0.3.2'

# Performance Testing
group :development do
  gem 'ruby-prof'
end

group :test do
  gem 'cucumber-rails'
end

# Testing
group :development, :test do
  gem 'factory_girl_rails', :require => false
  gem 'mocha'
  gem 'rspec-rails'
  gem 'shoulda-matchers', :git => 'git://github.com/thoughtbot/shoulda-matchers.git'
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

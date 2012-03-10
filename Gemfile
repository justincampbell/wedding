source :rubygems

gem 'rails', '3.2.1'

gem 'heroku'
gem 'jquery-rails'
gem 'json'
gem 'newrelic_rpm'
gem 'thin'

group :assets do
  gem 'bourbon'
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier',     '>= 1.0.3'
end

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'capybara'
  gem 'cucumber-rails'
  gem 'database_cleaner'
  gem 'rspec-rails'
  gem 'sqlite3'

  group :guard do
    gem 'guard-bundler'
    gem 'guard-cucumber'
    gem 'guard-rspec'
  end

  group :darwin do
    gem 'growl'
    gem 'rb-fsevent'
  end
end

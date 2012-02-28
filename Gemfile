source :rubygems

gem 'rails', '3.2.1'

gem 'jquery-rails'
gem 'json'

group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier',     '>= 1.0.3'
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

source :rubygems

gem 'rails', '3.2.8'

gem 'airbrake'
gem 'heroku'
gem 'jquery-rails'
gem 'json'
gem 'newrelic_rpm'
gem 'paper_trail'
gem 'respond-rails'
gem 'slim'
gem 'thin'

group :assets do
  gem 'bourbon'
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
end

group :production do
  gem 'pg'
end

group :development, :test do
  gem 'capybara'
  gem 'cucumber-rails', require: false
  gem 'fabrication'
  gem 'database_cleaner'
  gem 'rspec-rails'
  gem 'sqlite3'

  group :guard do
    gem 'guard-bundler'
    gem 'guard-cucumber'
    gem 'guard-rspec'

    group :darwin do
      gem 'growl'
      gem 'rb-fsevent'
    end
  end
end

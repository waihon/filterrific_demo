source 'https://rubygems.org'
ruby "2.3.1"
gem 'rails', '5.0.0'

gem 'bootstrap-datepicker-rails'
gem 'bootstrap-sass'
gem 'chardinjs-rails'
gem 'filterrific' #, path: '../filterrific'
gem 'haml-rails'
gem 'jbuilder'
gem 'jquery-rails'
group :production do
  gem 'pg'
end
gem 'random_data'
gem 'thin'
gem 'turbolinks'
gem 'will_paginate'
gem 'will_paginate-bootstrap'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails'
  gem 'uglifier'
end
gem 'coffee-rails' # specify in default group to avoid autoload warnings on tests

group :development, :test do
  # supported database adapters
  # gem 'pg' # already specified in default group higher up
  # gem 'mysql2' # use sqlite3 for development & test
  gem 'sqlite3'
end

group :development do
  gem 'listen', '~> 3.0.5'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console'
  gem "rails-erd"
end

group :test do
  gem 'wwtd'
end

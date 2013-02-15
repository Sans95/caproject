source 'https://rubygems.org'

gem 'rails', '3.2.11'

# Bundle edge Rails instead:
# gem 'rails', :git => 'git://github.com/rails/rails.git'


group :production do
  gem 'pg'
  # needed for the js runtime environment 
  #gem 'therubyracer-heroku', '0.8.1.pre3'
  # Recomended to use instead of WEBrick
  gem 'thin'
 # gem 'rack-ssl-enforcer'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'sqlite3'
gem 'simple_form'
gem 'meta_search'
gem 'paperclip'
gem "less-rails"
gem "haml-rails", "~> 0.3.5"
gem 'jquery-rails'
gem 'will_paginate'
gem "twitter-bootstrap-rails", "~> 2.2.3"


group :development do
  #For Rails 3.1, a JavaScript runtime is needed for Linux Ubuntu. It is not needed for Mac OS X or Windows.
  gem 'execjs'
  gem "therubyracer", "~> 0.11.3"
#  gem 'rspec-rails', '2.6.1.beta1'
end

group :test do
  #gem 'minitest'
  #gem 'minitest-matchers'
  #gem 'shoulda-matchers'
  gem 'capybara'
  #gem 'turn' #better output
  #gem 'guard-minitest'
  gem 'factory_girl'
  
  #gem 'guard-spork'
  gem 'database_cleaner'
  #gem 'spork-testunit'
 
  gem 'simplecov'
  #gem 'spin'
end
# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

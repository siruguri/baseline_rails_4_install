# -*- coding: utf-8 -*-
source 'https://rubygems.org'
ruby '2.5.0'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '>=5.1'
gem 'thin'
gem 'rails_admin'
gem 'dotenv'
gem 'devise'

# Use SCSS for stylesheets
gem 'sass-rails'

# Use Uglifier as compressor for JavaScript assets
gem 'uglifier'

# Use CoffeeScript for .js.coffee assets and views
gem 'coffee-rails'

# Everybody gotta have some jQuery and Bootstrap!
gem 'jquery-rails'
gem 'bootstrap', '~> 4.0.0'

# Both needed for default layouts and Turbolinks
gem 'turbolinks'
gem 'underscore-rails'
gem 'haml'

gem 'sidekiq'
gem 'sidekiq-cron'
gem 'redis-namespace'

# Required for sidekiq monitoring
gem 'sinatra', git: 'https://github.com/sinatra/sinatra.git'

group :production do
  gem 'pg'
  gem 'execjs'

  # Uncomment this for Heroku
  # gem 'rails_12factor'
end
group :development do
  gem 'web-console'
end

group :development, :test do
  # Use sqlite3 as the database for Active Record in dev and test envs  
  gem 'sqlite3'
  gem 'rails-controller-testing'
  gem 'byebug'
  gem 'pry'
  gem 'pry-remote'
  gem 'pry-stack_explorer'
  gem 'pry-byebug'
  gem 'spring'
  gem 'capistrano'
  gem 'capistrano-rails'
  gem 'capistrano-bundler'
  gem 'capistrano-rvm'
  gem 'capistrano-passenger'
  gem 'capistrano-sidekiq'
end

# Testing with minitest
group :test do
  gem 'mocha'
  gem 'simplecov'
  gem 'webmock'
  gem 'minitest-spec-rails'
  gem 'minitest-rails-capybara'
  gem 'capybara'
  gem 'selenium-webdriver'
  gem 'chromedriver-helper'
end

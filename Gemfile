source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

ruby '2.3.1'
gem 'rails', '~> 5.0.1'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jquery-rails'
gem 'jbuilder', '~> 2.5'
gem 'figaro'
gem 'faraday'
gem 'sprockets', '>= 3.0.0'
gem 'sprockets-es6'

group :development, :test do
  gem 'byebug', platform: :mri
  gem 'pry'
  gem 'poltergeist'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '~> 3.0.5'
end

group :test do
  gem 'rspec-rails'
  gem 'capybara'
  gem 'launchy'
  gem 'shoulda-matchers'
  gem 'database_cleaner'
  gem 'fabrication'
  gem 'simplecov', require: false
end

group :production do
  gem 'rails_12factor', group: :production
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

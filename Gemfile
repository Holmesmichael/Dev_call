source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end


gem 'rails', '~> 5.1.6'
gem 'sqlite3'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'haml', '~> 5.0', '>= 5.0.4'
gem 'simple_form', '~> 3.5'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.6'
gem 'devise', '~> 4.2'
gem 'bcrypt', git:'https://github.com/codahale/bcrypt-ruby.git',:require => 'bcrypt'
gem 'masonry-rails', '~> 0.2.4'
gem 'execjs'
gem 'acts_as_votable', '~> 0.10.0'
gem 'cancan', '~> 1.6', '>= 1.6.10'
gem 'geocoder', '~> 1.3', '>= 1.3.7'
gem 'cancancan', '~> 1.15'
gem 'net_http_ssl_fix', '~> 0.0.9', require: 'net_http_ssl_fix'

group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  gem 'web-console', '>= 3.3.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

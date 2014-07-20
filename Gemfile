source 'https://rubygems.org'

gem 'rails', '4.1.0'
gem 'bcrypt-ruby', '~> 3.1.2'
gem 'sass-rails', '~> 4.0.3'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.0.0'
gem 'jquery-rails'
gem 'turbolinks'
gem 'jbuilder', '~> 2.0'

group :development do
	gem 'sqlite3'
end

# bundle exec rake doc:rails generates the API under doc/api.
gem 'sdoc', '~> 0.4.0',          group: :doc

# Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
gem 'spring',        group: :development

group :development, :test do
  gem 'rspec-rails', '~> 2.0'
  gem 'factory_girl_rails', '~> 4.4.1'
end

group :test do
  gem 'capybara', '~> 2.4.1'
  gem 'capybara-email', '~>2.4.0'
  gem 'shoulda-matchers', '~> 2.6.1'
end

group :production do
	gem 'pg'
	gem 'rails_12factor'
end
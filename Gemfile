source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'dotenv-rails'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 6.0.0.rc1'
# Use sqlite3 as the database for Active Record
gem 'pg'
# Use Puma as the app server
gem 'puma', '~> 3.11'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5'
# Transpile app-like JavaScript. Read more: https://github.com/rails/webpacker
gem 'webpacker', '~> 4.0'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 4.0'
# Use Active Model has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# Use Active Storage variant
# gem 'image_processing', '~> 1.2'

gem 'rack-cors'

gem 'devise'
gem 'jwt'

gem 'activeadmin'
gem 'pundit'
# Reduces boot times through caching; required in config/boot.rb
gem 'bootsnap', '>= 1.4.2', require: false

# logging
gem 'lograge'
gem 'logstash-event'

# elasticsearch integration
gem 'elasticsearch-rails', '~> 7.0.0.pre'
gem 'elasticsearch-model', '~> 7.0.0.pre'

gem 'elasticsearch-extensions'

gem 'bonsai-elasticsearch-rails', '~> 7'

gem 'httparty'

gem 'fake_credit_card_api_gem', git: 'git@github.com:cmramseyer/fake_credit_card_api_gem.git'

gem 'sentry-raven'

gem 'draper'

# json serializer
gem 'blueprinter'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # using 4-0-dev in order to solve the 'get :index' error in controller specs
  # see http://jessehouse.com/blog/2019/06/19/actionview-template-error-wrong-number-of-arguments-given-2/
  gem 'rspec-rails', git: 'https://github.com/rspec/rspec-rails', branch: '4-0-dev'
  # gem 'rspec-rails', '~> 3.8'
  gem 'rspec_junit_formatter'
  gem 'database_cleaner'
  gem 'shoulda-matchers', '~> 4.0.1'
  gem 'brakeman'
  gem 'rails-controller-testing'
  gem 'capybara'
  gem 'selenium-webdriver'
end

group :development do
  # Access an interactive console on exception pages or by calling 'console' anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :test do
  # Easy installation and use of web drivers to run system tests with browsers
  gem 'webdrivers'
end

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

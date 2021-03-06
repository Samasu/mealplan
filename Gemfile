source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.4.1'

gem 'rails', '~> 5.2.3'
gem 'puma', '~> 3.11'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'
gem 'bootsnap', '>= 1.1.0', require: false

gem 'slim-rails'
gem 'html2slim'
gem 'bootstrap'
gem 'rails-i18n'
gem 'devise'
gem 'better_errors'
gem 'binding_of_caller'
gem 'ransack'
gem 'pry-rails'
gem 'kaminari'
gem 'kaminari-bootstrap'
gem 'jquery-rails'
gem 'font-awesome-sass'
gem 'font-awesome-rails'
gem 'gravatar_image_tag', github: 'mdeering/gravatar_image_tag'
gem 'carrierwave'
gem 'mini_magick'
gem 'counter_culture'
gem 'rake', '< 11.0'

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'sqlite3'
  gem "rspec-rails", "~> 3.1.0"
  gem "factory_bot_rails", '~>4.11'
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
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '>= 2.15'
  gem 'selenium-webdriver'
  gem 'webdrivers', '~> 3.0'
  gem "faker", "~> 1.4.3"
  gem "database_cleaner", "~> 1.3.0"
  gem "launchy", "~> 2.4.2"

end

group :production do
  gem 'pg', group: :production
end



gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

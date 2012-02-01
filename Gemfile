source 'http://rubygems.org'

gem 'rails', '3.2.0'

gem 'sqlite3'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sprockets'
  gem 'sass-rails', '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
  gem 'compass', :git => 'git://github.com/chriseppstein/compass.git', :branch => 'no_rails_integration'
  gem 'compass-rails', :git => 'git://github.com/Compass/compass-rails.git'
end

gem 'jquery-rails'

group :test do
  gem 'mocha'
end

gem "rake"
gem 'eventmachine', '~> 1.0.0.beta.4.1', :platforms => :mingw # Latest version known to work on Windows.
gem 'thin'
gem 'faye', :path => "vendor/gems/faye" # My special version w/ dep fixes for Windows.
gem "devise"

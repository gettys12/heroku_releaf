source 'https://rubygems.org'

# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'


# Use sqlite3 as the database for Active Record

gem 'rails', '~> 4.0.0'


gem 'devise', '~> 3.2.2'
gem 'rails_admin'

gem 'sass-rails', '~> 4.0.0'
gem 'rails_12factor', :group=> "production"
group :production do
  gem 'pg'
end
group :development, :test do
  gem 'sqlite3'
end
gem "twitter-bootstrap-rails"

#isolate assets for heroku deployment
gem 'coffee-rails'
gem 'jbuilder', '~> 1.2'
gem 'jquery-rails'

gem 'uglifier', '>= 1.3.0'
gem 'compass-rails'
gem "paperclip", "~> 3.5.3"
gem 'jquery-ui-rails'
# Use Uglifier as compressor for JavaScript assets
gem 'google-api-client', :require => 'google/api_client'
gem 'haml'
gem 'gmaps4rails'
gem 'sinatra'
gem 'google_calendar_oauth2'
gem 'fullcalendar-rails'
gem 'jquery-rest-rails'


# Use CoffeeScript for .js.coffee assets and views

gem 'protected_attributes'
# Used for file upload
gem 'carrierwave'
# Used for user login
gem 'active_attr', '0.7.0'

gem 'jquery-fileupload-rails'
# See https://github.com/sstephenson/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
group :doc do
  # bundle exec rake doc:rails generates the API under doc/api.
  gem 'sdoc', require: false
end


ruby "2.0.0"
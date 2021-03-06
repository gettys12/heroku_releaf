require File.expand_path('../boot', __FILE__)
# If you precompile assets before deploying to production, use this line
require 'rails/all'

Bundler.require(:default, Rails.env) if defined?(Bundler)
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.

module Releaf
  class Application < Rails::Application



    #config.assets.precompile += ['rails_admin/rails_admin.css', 'rails_admin/rails_admin.js',
    #                             'bootstrap.css','application.css','test.css', 'landing.css','index.js','fullcalendar.js','newmy-calendar.css',
    #                             'social-buttons.css','_event.css.scss','_header.css.scss','_table.css.scss','bootstrap.min.js',]

    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    # The default locale is :en and all translations from config/locales/*.rb,yml are auto loaded.
    # config.i18n.load_path += Dir[Rails.root.join('my', 'locales', '*.{rb,yml}').to_s]
    # config.i18n.default_locale = :de
    config.assets.initialize_on_precompile = false
  end
end

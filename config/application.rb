require 'dotenv'
require 'rails/all'
Dotenv.load unless Rails.env.production?

require File.expand_path('../boot', __FILE__)

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module TodoList
  class NoTokenException < Exception
  end

  class Application < Rails::Application
    
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    # Set Time.zone default to the specified zone and make Active Record auto-convert to this zone.
    # Run "rake -D time" for a list of tasks for finding time zone names. Default is UTC.
    # config.time_zone = 'Central Time (US & Canada)'

    config.active_record.sqlite3.represent_boolean_as_integer = true
    config.assets.quiet = true
    config.active_job.queue_adapter = :sidekiq
    config.middleware.insert(0, Rack::Deflater)
    config.autoload_paths += %W(#{config.root}/lib)

    # rails will fallback to config.i18n.default_locale translation
    config.i18n.fallbacks = true
    I18n.enforce_available_locales = false
  end
end

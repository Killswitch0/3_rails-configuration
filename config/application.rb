# frozen_string_literal: true

require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RailsConfiguration
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    # Rails использует класс ActiveSupport::Logger для записи информации в лог.
    # Другие логгеры, такие как Log4R, могут так же стать заменой.
    # Альтернативный логгер можно определить в config/application.rb или любом другом файле среды, например:
    config.logger = Logger.new($stdout)

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
  end
end

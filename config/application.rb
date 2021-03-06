require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module HelloRailsApi
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0
    config.time_zone = "Seoul"
    config.active_record.default_timezone = :local

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.autoloader = :classic

    config.eager_load_paths << Rails.root.join('lib')
    config.autoload_paths << "#{Rails.root}/lib"

    config.eager_load_paths << Rails.root.join('app')
    config.autoload_paths << Rails.root.join('app')
    config.eager_load_namespaces << Grape
  end
end

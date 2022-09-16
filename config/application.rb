require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module KizunaApp
  class Application < Rails::Application
    config.load_defaults 6.1
    config.time_zone = "Tokyo"
    config.i18n.load_path += Dir[Rails.root.join("config", "locales", "**", "*.{rb, yml").to_s]
    config.i18n.default_locale = :ja
    config.generators do |g|
      g.skip_routes true
      g.assets false
      g.test_framework :rspec
      g.controller_specs false
      g.view_specs false
    end
    # config.eager_load_paths << Rails.root.join("extras")
  end
end

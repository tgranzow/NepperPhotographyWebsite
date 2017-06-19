require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module PhotographyWebsite
  class Application < Rails::Application
      config.assets.enabled = true
      config.assets.paths << Rails.root.join('/app/assets/fonts')
  end
end

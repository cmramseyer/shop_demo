require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

Dotenv::Railtie.load

###############
# Sentry config
###############
# If you have added items to Rails’ log filtering,
# you can also make sure that those items are not sent to Sentry:

# in your application.rb:
# config.filter_parameters << :password

# in an initializer, like sentry.rb
# Raven.configure do |config|
  # config.sanitize_fields = Rails.application.config.filter_parameters.map(&:to_s)
# end

Raven.configure do |config|
  config.dsn = ENV['SENTRY_DNS']
end

###################
# End Sentry config
###################

module ShopDemo
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
  end
end

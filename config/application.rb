require File.expand_path('../boot', __FILE__)

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "action_view/railtie"
require "action_cable/engine"
# require "sprockets/railtie"
require "rails/test_unit/railtie"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

CORS_ALLOW_ORIGIN  = "*"
CORS_ALLOW_METHODS = %w{GET POST PUT OPTIONS DELETE}.join(',')
CORS_ALLOW_HEADERS = %w{Content-Type Accept X-User-Email X-Auth-Token}.join(',')

module TunejournalApi
  class Application < Rails::Application
    config.autoload_paths += %W(#{config.root}/app/services/**/)
    config.middleware.use Rack::Attack
    config.api_only = true

    config.action_dispatch.default_headers = {
      "Access-Control-Allow-Origin"  => CORS_ALLOW_ORIGIN,
      "Access-Control-Allow-Methods" => CORS_ALLOW_METHODS,
      "Access-Control-Allow-Headers" => CORS_ALLOW_HEADERS
    }
  end
end

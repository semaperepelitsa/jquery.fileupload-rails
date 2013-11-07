require File.expand_path('../boot', __FILE__)

require 'action_controller/railtie'
require 'sprockets/railtie'
Bundler.require

module Demo
  class Application < Rails::Application
    config.cache_classes = false
    config.eager_load = false
    config.consider_all_requests_local = true

    config.session_store :disabled
    config.secret_key_base = "no"
    config.active_support.deprecation = :log
    config.action_dispatch.best_standards_support = :builtin

    config.assets.enabled = true
    config.assets.debug = true
  end
end

require "jquery-ui-rails"

module JqueryFileUpload
  module Rails
		class Rails::Engine < ::Rails::Engine
      paths['vendor/assets'] << 'vendor/legacy_assets'
		end
  end
end

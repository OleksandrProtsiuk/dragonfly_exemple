require 'dragonfly'

# Configure
Dragonfly.app.configure do
  plugin :imagemagick

  secret "4824f6826655485bf7a1f95bafe7f6027c598c3fa2d7f41293d3a98743dfa4f9"

  url_format "/media/:job/:name"

  datastore :file,
    root_path: Rails.root.join('public/system/dragonfly', Rails.env),
    server_root: Rails.root.join('public')
end

# Logger
Dragonfly.logger = Rails.logger

# Mount as middleware
Rails.application.middleware.use Dragonfly::Middleware

# Add model functionality
ActiveSupport.on_load(:active_record) do
  extend Dragonfly::Model
  extend Dragonfly::Model::Validations
end

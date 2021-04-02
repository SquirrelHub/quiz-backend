# Be sure to restart your server when you modify this file.

# ActiveSupport::Reloader.to_prepare do
#   ApplicationController.renderer.defaults.merge!(
#     http_host: 'example.org',
#     https: false
#   )
# end

Rails.application.config.after_initialize do
  if defined?(::Puma) && !Object.const_defined?('Puma::Server::UNPACK_TCP_STATE_FROM_TCP_INFO')
    ::Puma::Server::UNPACK_TCP_STATE_FROM_TCP_INFO = "C".freeze
  end
end
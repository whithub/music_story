require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)


module MusicStory
  class Application < Rails::Application

    config.serve_static_assets = true

    config.active_record.raise_in_transactional_callbacks = true

    # config.action_mailer.delivery_method = :smtp
    #
    # config.action_mailer.smtp_settings = {
    #   address:              'smtp.mandrillapp.com',
    #   port:                 '587',
    #   user_name:            "whitcolorado@gmail.com",
    #   password:             "VvT2tXVcpNNIXG_szTjk_Q",
    #   authentication:       'plain',
    #   enable_starttls_auto: true
    # }
    #
    # # Do not swallow errors in after_commit/after_rollback callbacks.
    # config.active_record.raise_in_transactional_callbacks = true

    def spotify
      RSpotify::authenticate( ENV['SPOTIFY_KEY'], ENV['SPOTIFY_SECRET_KEY'] )
    end
  end
end

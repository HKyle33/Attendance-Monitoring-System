require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AttendanceMonitoringSystem
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    #For email password recovery
    ActionMailer::Base.smtp_settings = {
      :address                => 'smtp.gmail.com',
      :domain                 => 'mail.google.com',
      :port                   => 587,
      :user_name              => "mymailerapp@gmail.com",
      :password               => "weakpass",
      :authentication         => 'login',
      :enable_starttls_auto   => true
    }

  end
end

Rails.application.configure do
  # Settings specified here will take precedence over those in config/application.rb.

  # In the development environment your application's code is reloaded on
  # every request. This slows down response time but is perfect for development
  # since you don't have to restart the web server when you make code changes.
  config.cache_classes = false

  # Do not eager load code on boot.
  config.eager_load = false

  # Show full error reports and disable caching.
  config.consider_all_requests_local       = true
  config.action_controller.perform_caching = false

  # Don't care if the mailer can't send.
  config.action_mailer.raise_delivery_errors = false

  # Print deprecation notices to the Rails logger.
  config.active_support.deprecation = :log

  # Debug mode disables concatenation and preprocessing of assets.
  # This option may cause significant delays in view rendering with a large
  # number of complex assets.
  config.assets.debug = true

  # Adds additional error checking when serving assets at runtime.
  # Checks for improperly declared sprockets dependencies.
  # Raises helpful error messages.
  config.assets.raise_runtime_errors = true

  # Raises error for missing translations
  # config.action_view.raise_on_missing_translations = true

  config.action_mailer.delivery_method = :sendmail
  config.action_mailer.perform_deliveries = true
  config.action_mailer.raise_delivery_errors = true

  config.action_mailer.preview_path = "#{Rails.root}/app/mailer_previews"

  #Paperclip::Attachment.default_options[:url] = "/system/:class/:attachment/:id_partition/:style/:filename"
  Paperclip::Attachment.default_options[:url] = "http://kidmeets-images.qiniudn.com/:id/:style_:basename.:extension"
  Paperclip::Attachment.default_options[:path] = ":id/:style_:basename.:extension"
  #:url  => "#{CONFIG['image_host']}/ckeditor_assets/pictures/:id/:style_:basename.:extension",
  #    :path => ":id/:style_:basename.:extension"

  config.action_mailer.smtp_settings = {
      :address => 'smtpcloud.sohu.com',
      :port => 25,
      :domain => 'wVlkVeSQ4mdxBQqB0kzbp3NsmEqmv14H.sendcloud.org',
      :authentication => 'login',
      :user_name => ENV['SEND_CLOUD_MAIL_USERNAME'],
      :password => ENV['SEND_CLOUD_MAIL_PASSWORD'],
  }

end

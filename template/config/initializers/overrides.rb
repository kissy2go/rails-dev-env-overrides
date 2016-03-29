if Rails.env.development?
  Rails.application.configure do
    config.action_mailer.delivery_method \
      = ActionMailer::Base.delivery_method \
      = :smtp

    config.action_mailer.smtp_settings \
      = ActionMailer::Base.smtp_settings \
      = {
        address: ENV['MAILER_HOST'] || 'localhost',
        port:    Integer(ENV['MAILER_PORT'] || 1025),
      }
  end
end

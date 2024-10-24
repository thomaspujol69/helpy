require 'email_processor'

Griddler.configure do |config|
  config.processor_class = EmailProcessor # CommentViaEmail
  config.processor_method = :process # :create_comment (A method on CommentViaEmail)
  config.reply_delimiter = '--- Merci de bien vouloir répondre ci-dessus ---'
  config.email_service = Settings.mail_service # :sendgrid :cloudmailin, :postmark, :mandrill, :mailgun
end

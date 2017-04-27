class UserMailer < ApplicationMailer
  def hoa_email(message)
    @message = message
    mail(to: 'jlocatis@gmail.com', subject: 'HOA Owner Message')
end
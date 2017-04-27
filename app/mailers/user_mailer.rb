class UserMailer < ApplicationMailer
  def hoa_email(message)
    @message = message
    mail(to: 'somebody@someone.com', subject: 'HOA Owner Message')
  end
end
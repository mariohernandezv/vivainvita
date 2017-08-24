class MessageMailer < ApplicationMailer

  default from: "Your Mailer <noreply@yourdomain.com>"
  default to: "Mario <vivainvita@yahoo.com>"

  def new_message(message)
    @message = message
    
    mail subject: "Message from #{message.name}"
  end
end

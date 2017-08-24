class MessageMailer < ApplicationMailer

  default from: "WEB Viva <noreply@yourdomain.com>"
  default to: "Viva <vivainvita@yahoo.com>"

  def new_message(message)
    @message = message
    
    mail subject: "Mensaje de #{message.nombre}"
  end
end

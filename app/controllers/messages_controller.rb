class MessagesController < ApplicationController
	def new
    @message = Message.new
  end

  def create
    @message = Message.new(message_params)
    
    if @message.valid?
      MessageMailer.new_message(@message).deliver
      redirect_to contact_path, notice: "Tu mensaje ha sido enviado."
    else
      flash[:alert] = "Ocurrió un error al enviar el mensaje."
      render :new
    end
  end

private

  def message_params
    params.require(:message).permit(:name, :email, :content)
  end

end

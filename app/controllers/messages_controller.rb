class MessagesController < ApplicationController
  def index
    @messages = Message.all
    render json: @messages
  end

  def create
    @message = Message.create(msg_params)
  end

  private

  def msg_params
    params.permit(:name, :message)
  end
end



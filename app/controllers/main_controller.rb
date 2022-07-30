class MainController < ApplicationController
  def index
    greetings = Message.all
    render json: { status: 'SUCCESS', message: 'Loaded greeting', data: greetings.sample }, status: :ok
  end
end

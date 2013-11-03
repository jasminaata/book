class SubscribersController < ApplicationController
  def create
    subscriber = Subscriber.new subscriber_params

    if subscriber.save
      EmailMailer.subscribe(subscriber_params[:email]).deliver
      redirect_to :back, notice: "Thank you! Will let you know when it's ready."
    else
      redirect_to :back, notice: "There was an error subscribing to the site."
    end
  end

  private

  def subscriber_params
    params.require(:subscriber).permit(:email)
  end
end
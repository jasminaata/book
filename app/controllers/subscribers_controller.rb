class SubscribersController < ApplicationController
  def create
    @subscriber = Subscriber.new subscriber_params

    if @subscriber.save
      EmailMailer.subscribe(subscriber_params[:email]).deliver

      flash[:success] = 'Thank you! Will let you know when it\'s ready.'
    else
      flash[:error] = 'There was an error subscribing to the site.'
    end
    render "application/index"
  end

  private

  def subscriber_params
    params.require(:subscriber).permit(:email)
  end
end
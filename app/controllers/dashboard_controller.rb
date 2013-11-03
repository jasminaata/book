class DashboardController < ApplicationController
  def index
    @subscriber = Subscriber.new
  end
end

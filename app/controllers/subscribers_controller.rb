class SubscribersController < ApplicationController

  def new
    @subscriber = Subscriber.new
  end

  def create
    @subscriber = Subscriber.new(subscriber_params)
    if @subscriber.save
      flash[:notice]="Thanks for signing up!"
    else
      flash[:alert]="oops! There was an error. Try again"
    end
  end

  private
  def subscriber_params
    params.require(:subscriber).permit(:email)
  end
end

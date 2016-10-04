
class EventsController < ApplicationController
  def index
    @instagram = Instagram.user_recent_media("7174789", {:count => 3})
    @events = Event.all
  end
  def new
    @event = Event.new
  end
  def create
    @event = Event.new(event_params)
    if @event.save
      flash[:notice]="Event successfully added!"
      redirect_to events_path
    else
      render :new
    end
  end
  def edit
    @event = Event.find(params[:id])
    render :edit
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      redirect_to admin_index_path
    else
      render :index
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to admin_index_path
  end

  private
  def event_params
    params.require(:event).permit(:name, :date, :time, :venu, :address, :cost, :details, :image)
  end
end

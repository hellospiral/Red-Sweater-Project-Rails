
class EventsController < ApplicationController
  def index
    @instagram = Instagram.user_recent_media("7174789", {:count => 3})
    @events = Event.all
  end
  def new
    @event = Event.new
    respond_to do |format|
      format.html {redirect_to admin_index_path}
      format.js
    end
  end
  def create
    @event = Event.new(event_params)
    if @event.save
      respond_to do |format|
        format.html { redirect_to admin_index_path }
        format.js
      end
    end
  end
  def edit
    @event = Event.find(params[:id])
    respond_to do |format|
      format.html {redirect_to admin_index_path}
      format.js
    end
  end

  def update
    @event = Event.find(params[:id])
    if @event.update(event_params)
      flash[:notice]="Student successfully updated!"
      respond_to do |format|
        format.html {redirect_to admin_index_path}
        format.js
      end
    end
  end

  def destroy
    @event = Event.destroy(params[:id])
    respond_to do |format|
      format.html { redirect_to admin_index_path }
      format.js
    end
  end

  private
  def event_params
    params.require(:event).permit(:name, :date, :time, :venu, :address, :cost, :details, :image)
  end
end

class EventsController < ApplicationController
  def index
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
      redirect_to :root
    else
      render :index
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    redirect_to :root
  end

  private
  def event_params
    params.require(:event).permit(:name, :date, :time, :venu, :address, :cost, :details, :image)
  end
end

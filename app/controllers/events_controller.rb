class EventsController < ApplicationController
  
  def index
    @events = Event.paginate(page: params[:page])
  end

  def new
  	@event = Event.new
  end
  
   def create
   	@event = Event.new(params[:event])
   	@event.save
   	flash[:notice] = "Event has been created"
   	redirect_to @event

   end

   def show
  	@event = Event.find(params[:id])
  end

  def edit
  	@event = Event.find(params[:id])
  end

  def update
    @event = Event.find(params[:id])
    if @event.update_attributes(params[:event])
      flash[:success] = "Event updated"
      redirect_to @event
    else
      render 'edit'
    end
  end

  def destroy
    @event = Event.find(params[:id])
    @event.destroy
    flash[:notice] = "Event has been deleted."
    redirect_to @event
  end

 



end

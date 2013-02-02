class EventsController < ApplicationController
  before_filter :signed_in_user, only: [:create, :destroy]
  before_filter :correct_user,   only: :destroy
  
  def index
    @search = Event.search do 
      fulltext params[:search]   
    end
    @events = @search.results
    #@events = Event.paginate(page: params[:page])
  end

  def new
  	@event = Event.new
  end
  
   def create
   	@event = current_user.events.build(params[:event])
   	if @event.save
   	  flash[:notice] = "Event has been created"
   	  redirect_to root_url
    else
      @feed_items = []
      render 'new'
    end

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
    redirect_to root_url
  end

      private

    def correct_user
      @event = current_user.events.find_by_id(params[:id])
      redirect_to root_url if @event.nil?
    end

 



end

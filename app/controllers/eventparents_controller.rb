class EventparentsController < ApplicationController
  # GET /eventparents/new
  def new
    @eventparent = Eventparent.new
    @companies = Company.all
    
  end

  # POST /eventparents
  # POST /eventparents.json
  def create
    @eventparent = Eventparent.new(eventparent_params)

    respond_to do |format|
      if @eventparent.save
        format.html { redirect_to @eventparent, notice: 'Event was successfully created.' }
        format.json { render :show, status: :created, location: @eventparent }
        @date = @eventparent.first_date
        while @date <= @eventparent.last_date
          @event = Event.new
          @event.title = @eventparent.title
          @event.start_time = @date + @eventparent.start_hour.hour
          @event.end_time = @date + @eventparent.end_hour.hour
          @event.company_id = 1
          @event.save
          @date = @date + 7.days
        end        
      else
        format.html { render :new }
        format.json { render json: @eventparent.errors, status: :unprocessable_entity }
      end
    end
  end
  
  def show
    
  end
  
  private
   # Never trust parameters from the scary internet, only allow the white list through.
    def eventparent_params
      params.require(:eventparent).permit(:title, :first_date, :last_date, :start_hour, :end_hour, :company_id)
    end
end

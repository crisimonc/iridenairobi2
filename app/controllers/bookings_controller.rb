class BookingsController < ApplicationController

	def index
    	@bookings = Booking.user_bookings(current_user)
  	end

  	def show
   		@booking = Booking.find(params[:id])

      @markers= 
      {
        latitude: @booking.latitude,
        longitude: @booking.longitude#,
      }
  	end

  	def new
    	@motorcycle = Motorcycle.find(params[:motorcycle_id])
      @booking = Booking.new
    end

    def create
    	@booking = Booking.new(booking_params)
		  @booking.motorcycle = Motorcycle.find(params[:motorcycle_id])
    	@booking.user = current_user
      
    	if @booking.save
      		redirect_to motorcycle_booking_path(@booking.motorcycle, @booking)
    	else
      		render :new
    	end
  	end


private

 	 def booking_params
    	params.require(:booking).permit(:start_date, :end_date, :motorcycle_id, :user_id, :address)
  	end
end

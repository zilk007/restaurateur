class BookingsController < ApplicationController

def index
        @bookings = Booking.all
      end


      def show
        @booking = Booking.find(params[:id])
      end

      def new

        @booking = Booking.new

      end


  def edit
    @booking = Booking.find(params[:id])
  end

      def create
      	 @booking = Booking.new(booking_params)
         @booking.title = current_user.title

      # @booking = current_user.vips.new(vip_params)
       if @booking.save
       redirect_to new_booking_path  
       #notice: 'vip '+@booking.email+' added ('+@booking.created_at.strftime("%d-%m-%Y")+' ) ( '+Time.now.strftime("%d-%m-%Y")+' )' 
      end
  end
end

   private

   def booking_params
    params.require(:booking).permit(:title,:special,:name,:email,:date)
  end 

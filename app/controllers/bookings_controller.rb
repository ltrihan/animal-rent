class BookingsController < ApplicationController

    def new
        @booking = Booking.new
        @animal = Animal.find(params[:animal_id])
    end

    def create
        @user = current_user
        @animal = Animal.find(params[:animal_id])
        @booking = Booking.new(booking_params)
        @booking.animal = @animal
        @booking.user = @user
        if @booking.save
            redirect_to root_path
        else
            render :new
        end            
    end

    private

    def booking_params
        params.require(:booking).permit(:start_at, :end_at)
    end
end

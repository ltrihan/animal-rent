class BookingsController < ApplicationController

    def index
      @bookings = Booking.where(user: current_user)
    end


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
            redirect_to user_path(current_user)
        else
            render :new
        end
    end

    def edit
      @booking = Booking.find(params[:id])
    end

    def update
      @booking = Booking.find(params[:id])
      @booking.update(booking_params)
    end

    def destroy
      @booking = Booking.find(params[:id])
      @booking.destroy
      redirect_to bookings_path(@booking)
    end


    private

    def booking_params
        params.require(:booking).permit(:start_at, :end_at)
    end
end

class BookingsController < ApplicationController
  def index
    @profile = Profile.find(params[:profile_id])
    @bookings = @profile.bookings
    @getRandomNumber = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10].sample
  end

  def show
    @profile = Profile.find(params[:profile_id])
    # @booking = Booking.find(params[:id])
    @booking = Booking.new
  end

  def new
    @booking = Booking.new
    @profile = Profile.find(params[:profile_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @profile = Profile.find(params[:profile_id])
    @booking.profile = @profile
    @booking.user_id = current_user.id
    @booking.save!
    redirect_to profile_bookings_path(@profile)
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :event_location, :event_name)
  end
end

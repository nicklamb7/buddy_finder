class BookingsController < ApplicationController
  def index
    @profile = Profile.find(params[:profile_id])
    @bookings = @profile.bookings
  end

  # def show
  #   @profile = Profile.find(params[:profile_id])
  #   @booking = @profile.bookings(params[:id])
  # end

  def new
    @booking = Booking.new
    @profile = Profile.find(params[:profile_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @profile = Profile.find(params[:profile_id])
    @booking.profile = @profile
    @booking.save
    redirect_to profile_path(@profile)
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

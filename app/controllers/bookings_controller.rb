class BookingsController < ApplicationController
  def index
    @profile = Profile.find(params[:profile_id])
    @bookings = @profile.bookings
  end

  def users_bookings
    # @profile = Profile.find(params[:profile_id])
    # # @booking = Booking.find(params[:id])
    # @booking = Booking.new
    # THIS SHOWS ALL USER'S BOOKINGS"
    if current_user
      @bookings = Booking.where(user_id: current_user.id)
    else
      redirect_to new_user_session_path, alert: "Log in to view your bookings!"
    end
  end

  def new
    @booking = Booking.new
    @profile = Profile.find(params[:profile_id])
  end

  def create
    if current_user
      @booking = Booking.new(booking_params)
      @profile = Profile.find(params[:profile_id])
      @booking.profile = @profile
      @booking.user_id = current_user.id
      @booking.save!
      redirect_to profile_bookings_path(@profile)
    else
      redirect_to new_user_session_path, alert: "Log in to make a booking!"
    end
  end

  def destroy
    @booking = Booking.find(params[:id])

    @booking.destroy
    redirect_to mybookings_path
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :event_location, :event_name)
  end
end

class ProfilesController < ApplicationController
  def index
    if params[:query].present?
      sql_query = "first_name @@ :query OR last_name @@ :query OR concat(first_name, ' ', last_name) @@ :query"
      @profiles = Profile.where(sql_query, query: "%#{params[:query]}%")
      @found = true
    else
      @profiles = Profile.all
      @found = false
    end

    @markers = @profiles.geocoded.map do |profile|
      {
        lat: profile.latitude,
        lng: profile.longitude,
        info_window: render_to_string(partial: "info_window", locals: { profile: profile })
      }
    end
  end

  def show
    @profile = Profile.find(params[:id])
    @full_name = full_name(@profile.first_name, @profile.last_name)
    @age = age(@profile.birth_date)
    @booking = Booking.new
  end

  def new
    @profile = Profile.new
  end

  def create
    if current_user
      @profile = Profile.new(profile_params)
      @profile.user_id = current_user.id
      @profile.save
      redirect_to profile_path(@profile)
    else
      redirect_to new_user_session_path
    end
  end

  def update
    @profile = Profile.find(params[:id])
    @profile.update(profile_params)
    redirect_to profiles_path
  end

  def edit
    @profile = Profile.find(params[:id])
    unless current_user.profile == @profile
      return redirect_to current_user.profile.present? ? edit_profile_path(current_user.profile) : new_profile_path,
                         alert: "You are not authorized to edit someone else's profile"
    end
  end

  def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy
    redirect_to profiles_path
  end

  def full_name(first_name, last_name)
    "#{first_name} #{last_name}"
  end

  def age(birth_date)
    unless birth_date.nil?
      # 26 = 2021 - 1995
      age = Date.today.year - birth_date.year
      # birth_date : date object // age.year to get the year only
      age -= 1 if Date.today < birth_date + age.years # for days before birthday
      age
    end
  end

  def search
    if params[:query].present?
      sql_query = "first_name ILIKE :query OR last_name ILIKE :query"
      @profiles = Profile.where(sql_query, query: "%#{params[:query]}%")

    end
  end

  private

  def profile_params
    params.require(:profile).permit(:bio, :interests, :picture, :location, :birth_date, :last_name, :first_name, :latitude, :longitude)
  end
end

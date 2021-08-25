class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all
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
    redirect_to profile_path(@profile)
  end

  def edit
    @profile = Profile.find(params[:id])
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
    if birth_date != nil
    # 26 = 2021 - 1995
    age = Date.today.year - birth_date.year
    # birth_date : date object // age.year to get the year only
    age -= 1 if Date.today < birth_date + age.years #for days before birthday
    age
    end
  end

  private

  def profile_params
    params.require(:profile).permit(:bio, :interests, :picture, :location, :birth_date, :last_name, :first_name)
  end
end

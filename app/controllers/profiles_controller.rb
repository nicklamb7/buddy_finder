class ProfilesController < ApplicationController
  def index
    @profiles = Profile.all
  end

  def show
    @profile = Profile.find(params[:id])
    @full_name = full_name(@profile.first_name, @profile.last_name)
    @age = age(@profile.birth_date)
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

  # def age(birth_date)
  # birthdate = Time.new(year, month, day)
  # avg_seconds_in_year = 31557600
  # seconds = (Time.now- birthdate).to_i
  # years = seconds/avg_seconds_in_year
  # years
  # end
  # def age(birth_date)
  #   age = Date.today - "#{birth_date}"
  #   age -= 1 if Date.today < birthday + age.years #for days before birthday
  # end
  private

  def profile_params
    params.require(:profile).permit(:bio, :interests, :picture, :location, :birth_date, :last_name, :first_name)
  end
end

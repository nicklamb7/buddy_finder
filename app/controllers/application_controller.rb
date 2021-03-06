class ApplicationController < ActionController::Base
  protected

  def after_sign_in_path_for(resource)
    resource.profile.present? ? super : new_profile_path
  end
end

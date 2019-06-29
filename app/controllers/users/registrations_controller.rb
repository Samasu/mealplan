# frozen_string_literal: true

class Users::RegistrationsController < Devise::RegistrationsController
  before_action :authenticate_user!


protected

  def after_sign_in_path_for(resource)
    @user
  end

end

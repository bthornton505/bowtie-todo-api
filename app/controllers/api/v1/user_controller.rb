class Api::V1::UsersController < ApplicationController

  def create
    
  end

  private

  def user_params
    params.permit(:user).require(:username, :email, :password)
  end

end

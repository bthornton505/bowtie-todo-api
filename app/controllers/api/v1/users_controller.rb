class Api::V1::UsersController < ApplicationController
  skip_before_action :authorize_request, only: :create
  before_action :set_user, only: [:show, :update]

  def create
    user = User.create!(user_params)
    auth_token = AuthenticateUser.new(user.email, user.password).call
    response = { message: Message.account_created, auth_token: auth_token }
    json_response(response, :created)
  end

  def find
    user = User.find_by(email: params[:email])
    if user
      json_response(user)
    else
      errors = user.errors.full_message
      json_response(errors)
    end
  end

  private

  def user_params
    params.permit(:username, :email, :password, :password_confirmation)
  end

  def set_user
    user = User.find_by(id: params[:id])
  end

end

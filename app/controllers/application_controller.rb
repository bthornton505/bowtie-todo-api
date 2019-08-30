class ApplicationController < ActionController::API
  include Response
  include ExceptionHandler

  # called before every action on controllers
  before_action :authorize_request
  attr_reader :current_user

  def fallback_index_html
    render :file => 'public/index.html'
  end

  private

  # check for valid request token and return user
  def authorize_request
    @current_user = AuthorizeApiRequest.new(request.headers).call[:user]
    # render json: { error: 'Not Authorized' }, status: 401 unless @current_user
  end

end

class ApplicationController < ActionController::API

  include ActionController::Cookies

  rescue_from ActiveRecord::RecordInvalid, with: :invalid 

  before_action :authorize

  private 

  def invalid(inst)
    render json: {errors: inst.record.errors.full_messages},
    status: :unprocessable_entity 
  end 

  def authorize 
    @current_user = User.find_by(id: session[:user_id])
    render json: {error: "Please Login :-)"}, status: :unauthorized unless @current_user
  end 

end

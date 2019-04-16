class AuthController < ApplicationCotroller
  skip_before_action :authenticate_request

  def authenticate
    command = AuthenticateUser.call(params[:email], params[:password])
    
    if comman.success?
      render json: {auth_token: command.result}
    else
      render json: {err: command.errors }, status: :unauthorized
    end
  end
end

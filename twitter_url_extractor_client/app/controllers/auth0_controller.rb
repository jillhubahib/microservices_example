class Auth0Controller < ApplicationController
  layout "blank", only: :failure

  # Set session[:userinfo] when authentication succeeds
  def callback
    session[:userinfo] = request.env["omniauth.auth"]

    redirect_to "/dashboard"
  end

  # Render failure when something goes wrong.
  def failure
  end

  def logout
    reset_session
    redirect_to root_path
  end
end

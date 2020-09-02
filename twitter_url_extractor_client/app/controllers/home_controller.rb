class HomeController < ApplicationController
  before_action :authenticate_user!, only: [:dashboard]
  layout "blank", only: :index

  def index
    redirect_to dashboard_path if user_signed_in?
  end

  def dashboard
  end

  def submit
    if valid_date_range?
      # save user setting to session
      session[:start_date] = setting_params[:start_date]
      session[:end_date] = setting_params[:end_date]
      session[:email] = setting_params[:email]
      # send setting to message broker
      redirect_to dashboard_path, notice: "Yey, please check your email for the list of URLs"
    else
      redirect_to dashboard_path, alert: "Ooops, invalid date range"
    end
  end

  private

  def setting_params
    params.require(:settings).permit(:start_date, :end_date, :email)
  end

  def valid_date_range?
    start_date = ::Date.parse(setting_params[:start_date])
    end_date = ::Date.parse(setting_params[:end_date])
    end_date > start_date
  end
end

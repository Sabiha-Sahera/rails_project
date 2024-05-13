class DashboardController < ApplicationController
  before_action :authenticate_user! # Require authentication for all actions
  before_action :set_user_and_settings, only: [:index, :settings, :update_settings]

  def index
    # Logic to fetch and display dashboard data
    @activities = @user.activities
    # Add more logic as needed to fetch data for the dashboard
  end

  def settings
    # Logic to fetch and display user settings
  end

  def update_settings
    if @user_setting.update(user_settings_params)
      redirect_to dashboard_settings_path, notice: 'Settings updated successfully'
    else
      render :settings, alert: 'Failed to update settings'
    end
  end

  private

  def set_user_and_settings
    @user = current_user
    @user_setting = @user.user_setting
  end

  def user_settings_params
    params.require(:user_setting).permit(:time_limit_per_website, :website_categories)
  end
end

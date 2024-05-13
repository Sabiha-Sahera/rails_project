# app/controllers/api/v1/activities_controller.rb
class Api::V1::ActivitiesController < ApplicationController
    before_action :authenticate_user! # Require authentication for all actions
  
    def create
      @activity = current_user.activities.build(activity_params)
      if @activity.save
        render json: { message: 'Activity recorded successfully' }, status: :created
      else
        render json: { error: 'Failed to record activity' }, status: :unprocessable_entity
      end
    end
  
    private
  
    def activity_params
      params.require(:activity).permit(:website_url, :time_spent)
    end
  end
  
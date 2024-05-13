Rails.application.routes.draw do
  # Devise routes for user authentication
  devise_for :users

  # Custom routes for API requests from Chrome Extension
  namespace :api do
    namespace :v1 do
      resources :activities, only: [:create] # Example route for activity tracking
      # Add more routes as needed for other API endpoints
    end
  end

  # Secure routes that require authentication
  authenticated :user do
    # Define your authenticated routes here
    # For example:
    resources :activities
    resources :dashboard
  end

  # Root route
  root 'dashboard#index'
end


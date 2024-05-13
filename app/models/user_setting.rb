# app/models/user_settings.rb
class UserSetting < ApplicationRecord
  belongs_to :user
end

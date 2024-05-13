# app/models/restricted_website.rb
class RestrictedWebsite < ApplicationRecord
  belongs_to :user
end

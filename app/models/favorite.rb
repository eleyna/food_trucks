class Favorite < ActiveRecord::Base
  belongs_to :user
  belongs_to :foodtruck
  attr_accessible :user_id, :foodtruck_id
end
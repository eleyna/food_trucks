class Foodtype < ActiveRecord::Base
  has_many :foodtrucks
  attr_accessible :name
end
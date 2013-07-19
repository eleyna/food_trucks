class Foodtruck < ActiveRecord::Base
  has_many :favorites
  has_many :users, :through => :favorites
  belongs_to :foodtype
  belongs_to :location
  attr_accessible :name, :handle, :foodtype_id, :location_id
  validates_presence_of :name, :handle
end
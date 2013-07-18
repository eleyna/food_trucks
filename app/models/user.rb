class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :token_authenticatable, :confirmable,
  # :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :favorites
  has_many :foodtrucks, :through => :favorites
  #attr_accessible :email, :password, :password_confirmation
  attr_accessible :email, :password, :remember_me, :password_confirmation
end
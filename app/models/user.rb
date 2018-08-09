class User < ApplicationRecord
	
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable, :recoverable, :rememberable, :trackable, :validatable

  has_many :courses, dependent: :destroy
  has_many :libraries
  has_many :library_additions, through: :libraries, source: :course

  def subscribed?
  	stripe_subscription_id?
  end

end
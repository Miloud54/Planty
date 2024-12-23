class User < ApplicationRecord
  has_many :plants
  has_many :bookings
  has_many :plants, through: :bookings
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  # validates :name, presence: true
  # validates :address, presence: true
end

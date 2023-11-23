class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :furries, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :bookings_as_owner, through: :furries, source: :bookings
  # has_many :furries, through: :bookings
end

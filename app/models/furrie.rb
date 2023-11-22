class Furrie < ApplicationRecord
  belongs_to :user # dependent: :destroy
  has_many :bookings
  has_one_attached :photo
  validates :name, presence: true
  validates :description, presence: true
  validates :fursona, presence: true, inclusion: { in: %w[wolf fox dragon puppy cat racoon panda] }
  # validates :availability, default: true
end

class Furrie < ApplicationRecord
  belongs_to :user # dependent: :destroy
  has_many :bookings
  validates :name, presence: true
  validates :description, presence: true
  validates :fursona, presence: true, inclusion: { in: %w[wolf fox dragon puppy cat racoon panda] }
  # validates :availability, default: true
end

class Furry < ApplicationRecord
  belongs_to :user # dependent: :destroy
  has_many :bookings, dependent: :destroy
  # has_many :users, through: :bookings, source: :user
  has_one_attached :photo
  validates :name, presence: true
  validates :description, presence: true
  validates :fursona, presence: true, inclusion: { in: %w[wolf fox dragon puppy cat racoon panda] }
  # validates :availability, default: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
end

class Furry < ApplicationRecord
  belongs_to :user # dependent: :destroy
  has_many :bookings, dependent: :destroy
  # has_many :users, through: :bookings, source: :user
  has_one_attached :photo
  validates :name, presence: true
  validates :description, presence: true
  validates :fursona, presence: true, inclusion: { in: %w[Wolf Fox Puppy Cat Raccoon Panda] }
  # validates :availability, default: true
  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?
  validates :energy, presence: { message: 'cannot be blank' }, numericality: { only_integer: true }
  validates :energy, numericality: { in: 1..5 }
  validates :cuddleable, presence: { message: 'cannot be blank' }, numericality: { only_integer: true }
  validates :cuddleable, numericality: { in: 1..5 }
  validates :tough_love, presence: { message: 'cannot be blank' }, numericality: { only_integer: true }
  validates :tough_love, numericality: { in: 1..5 }
end

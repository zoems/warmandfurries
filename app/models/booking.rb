class Booking < ApplicationRecord
  belongs_to :furry
  belongs_to :user
  # validates :start_date, :end_date, presence: true # availability: true
  validate :end_date_after_start_date
  validates :status, presence: true
  enum status: [ :pending, :rejected, :accepted ]
  validates :total_cost, presence: true
  validates :dates, presence: true


  private

  def end_date_after_start_date
    return if end_date.blank? || start_date.blank?

    return errors.add(:end_date, "must be after the start date") if end_date < start_date
  end
end

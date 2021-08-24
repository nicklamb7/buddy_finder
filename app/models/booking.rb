class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :profile

  validates :start_date, presence: true
  validates :end_date, presence: true
  # validates :start_date, presence: true, comparison: { less_than: :end_date }
  # validates :start_date, presence: true, comparison: { greater_than: :end_date }
  validates :event_location, presence: true
  validates :event_name, presence: true, length: { minimum: 2 }

  validate :end_date_after_start_date?

  private

  def end_date_after_start_date?
    if end_date < start_date
      errors.add :end_date, "must be after start date"
    end
  end
end

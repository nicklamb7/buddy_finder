class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :profile

  validates :start_date, presence: true, comparison: { greater_than: :end_date }
  validates :end_date, presence: true
  validates :event_location, presence: true
  validates :event_name, presence: true, length: { minimum: 2 }
end

class Profile < ApplicationRecord
  belongs_to :user
  has_many :bookings, dependent: :destroy

  validates :first_name, presence: true, length: { minimum: 2 }
  validates :last_name, presence: true, length: { minimum: 2 }
  validates :bio, presence: true, length: { maximum: 500, too_long: "500 characters is the maximum allowed" }
  validates :interests, presence: true, length: { maximum: 200, too_long: "200 characters is the maximum allowed" }
  validates :picture, presence: true

  def unavailable_dates
    bookings.pluck(:start_date, :end_date).map do |range|
      { from: range[0], to: range[1] }
    end
  end


  include PgSearch::Model
  pg_search_scope :search_by_first_name_and_last_name,
                  against: %i[first_name last_name],
                  using: {
                    tsearch: { prefix: true }
                  }

end

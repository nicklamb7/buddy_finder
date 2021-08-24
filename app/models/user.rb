class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings

  has_one :profile

  validates :email, presence: true, uniqueness: true, confirmation: { case_sensitive: false }
  validates :email, format: { with: /\A.*@.*\.com\z/ }

  validates :password, presence: true, length: { in: 6..20 }
  validates :password, confirmation: true
end

class StoreInformation < ApplicationRecord

  has_one_attached :store_image_url
  belongs_to:user
  has_many :store_comments, dependent: :destroy



  validates :name, presence: true
  validates :address, presence: true
	validates :access, presence: true
	validates :business_hours, presence: true
	validates :eat_in_space, presence: true
	validates :regular_holiday, presence: true
end

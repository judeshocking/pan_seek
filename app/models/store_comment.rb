class StoreComment < ApplicationRecord
  belongs_to :user
  belongs_to :store_information, optional: true

  validates :store_comment, presence: true
  validates :store_rate, numericality: {
    less_than_or_equal_to: 5,
    greater_than_or_equal_to: 1
  }, presence: true
end

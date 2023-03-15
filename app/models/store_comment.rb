class StoreComment < ApplicationRecord
  belongs_to :user
  belongs_to :store_information, optional: true
end

class Comment < ApplicationRecord
  belongs_to :user
  belongs_to :store_information
end

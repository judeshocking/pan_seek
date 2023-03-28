class Post < ApplicationRecord


   belongs_to :user
   has_many :comments, dependent: :destroy
   has_one_attached :image

   validates :title, presence: true
   validates :text, presence: true
   validates :image, presence: true

   def get_image
    if image.attached?
      image
    else
      'no_image.jpg'
    end
   end


end

class Post < ApplicationRecord


   belongs_to :user
   has_many :comments, dependent: :destroy
   has_one_attached :image

   validates :title, presence: true, length: { maximum: 50}
   validates :text, presence: true, length: { maximum: 200}

   def get_image
    if image.attached?
      image
    else
      'no_image.jpg'
    end
   end


end

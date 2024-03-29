class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable



  validates :screen_name, uniqueness: true, length: { minimum: 2, maximum: 20}
  has_many :posts, dependent: :destroy
  has_many :comments, dependent: :destroy
  has_many :store_comments, dependent: :destroy
  has_one_attached :profile_image


  def get_profile_image(width, height)
    unless profile_image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpeg')
      profile_image.attach(io: File.open(file_path), filename: 'no_image.jpeg', content_type: 'image/jpeg')
    end
    profile_image.variant(resize_to_limit: [width, height]).processed
  end


  def active_for_authentication?
    super && (is_deleted == false)
  end

end

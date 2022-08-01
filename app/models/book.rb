class Book < ApplicationRecord
  belongs_to :user, optional: true
  has_one_attached :image
  def get_image
    if image.attached?
      image
    else
      'abcd.jpg'
    end
  end
  validates :title, presence: true
  validates :body, presence: true, length: { maximum: 200} 
end

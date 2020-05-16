class Post < ApplicationRecord
  #to avoid adding default image
  belongs_to :user

  validates :user_id, presence: true
  validates :image, presence: true

  has_attached_file :image,  styles: { medium: "450x450" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\z/

end
class Micropost < ApplicationRecord
  belongs_to :user
   default_scope -> { order(created_at: :desc) }
    mount_uploader :picture, PictureUploader
  validates :user_id, presence: true
  validates :origin, presence: true, length: { maximum: 140}
  validates :destination, presence: true, length: { maximum: 140}  
 validates :budget, presence: true, length: { maximum: 140}
end

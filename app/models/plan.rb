class Plan < ApplicationRecord
 belongs_to :user
 has_one_attached :image
 has_many :likes, dependent: :destroy
 has_many :like_users, through: :likes, source: :user
 has_many :comments


 def liked_by?(user)
   likes.where(user_id: user.id).exists?
 end



end

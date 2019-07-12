class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :plans
  has_many :likes, dependent: :destroy 
  has_many :like_plans, through: :likes, source: :plan
  has_many :comments, dependent: :destroy
  
  
  
  has_many :active_relationships, foreign_key: "following_id", class_name: "Relationship", dependent: :destroy
  has_many :followings, through: :active_relationships, source: :follower
  
  has_many :passive_relationships, foreign_key: "follower_id", class_name: "Relationship", dependent: :destroy
  has_many :followers, through: :passive_relationships, source: :following

  def followed_by?(user)
    passive_relationships.find_by(following_id: user.id).present?
  end

 


  has_one_attached :avatar
  mount_uploader :avatar_path, AvatarUploader
  
  validates :name, presence: true
  validates :profile, length: { maximum: 200 }

 

end

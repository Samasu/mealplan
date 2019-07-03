class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :plans
  has_many :likes, dependent: :destroy 
  has_many :like_plans, through: :likes, source: :plan

  has_one_attached :avatar
  mount_uploader :avatar_path, AvatarUploader
  
  validates :name, presence: true
  validates :profile, length: { maximum: 200 }

 

end

class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :plans 
  has_one_attached :avatar
  
  validates :name, presence: true
  validates :profile, length: { maximum: 200 }
end

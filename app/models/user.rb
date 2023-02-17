class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :user_careers, dependent: :destroy
  has_many :careers, through: :user_careers
  has_many :user_milestones, dependent: :destroy
  has_many :milestones, through: :user_milestones
  has_one_attached :photo
end

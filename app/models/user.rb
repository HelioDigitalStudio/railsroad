class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :users_careers_paths, dependent: :destroy
  has_many :career_paths, through: :users_careers_paths
  has_many :user_milestones, dependent: :destroy
  has_many :milestones, through: :user_milestones
end

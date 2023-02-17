class Career < ApplicationRecord
    has_many :milestones, dependent: :destroy
    has_many :user_careers, dependent: :destroy
    has_one_attached :photo
end

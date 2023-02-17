class Milestone < ApplicationRecord
  has_many :user_milestones, dependent: :destroy
  validates :title, presence: true
  validates :content, presence: true
  has_one_attached :photo
  belongs_to :career
end

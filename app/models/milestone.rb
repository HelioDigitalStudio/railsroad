class Milestone < ApplicationRecord
  belongs_to :career_paths
  has_many :user_milestones, dependent: :destroy
  validates :title, presence: true
  valdiates :cotnent, presence: true
end

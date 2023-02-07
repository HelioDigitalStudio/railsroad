class UsersCareersPath < ApplicationRecord
  belongs_to :users
  belongs_to :career_paths
  validates :title, presence: true
  validates :description, presence: true
end

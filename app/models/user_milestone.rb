class UserMilestone < ApplicationRecord
  belongs_to :users
  belongs_to :milestones
end

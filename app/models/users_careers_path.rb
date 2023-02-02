class UsersCareersPath < ApplicationRecord
  belongs_to :users
  belongs_to :career_paths
end

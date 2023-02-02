class CareerPath < ApplicationRecord
    has_many :milestones, dependent: :destroy
    has_many :users_careers_paths, dependent: :destroy
end

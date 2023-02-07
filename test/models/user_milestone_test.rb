require "test_helper"

class UserMilestoneTest < ActiveSupport::TestCase
  describe "UserMilestone validations" do
    it "must have a user" do
      user_milestone = UserMilestone.new
      user_milestone.valid?.must_equal false
      user_milestone.errors.messages.must_include :user
    end

    it "must have a milestone" do
      user_milestone = UserMilestone.new
      user_milestone.valid?.must_equal false
      user_milestone.errors.messages.must_include :milestone
    end
  end
end

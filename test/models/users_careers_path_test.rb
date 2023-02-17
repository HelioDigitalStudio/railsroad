require "test_helper"

class UserCareerPathTest < ActiveSupport::TestCase
  describe "UserCareerPath validations" do
    it "must have a user" do
      users_careers_path = UserCareerPath.new
      users_careers_path.valid?.must_equal false
      users_careers_path.errors.messages.must_include :user
    end

    it "must have a title" do
      users_careers_path = UserCareerPath.new
      users_careers_path.valid?.must_equal false
      users_careers_path.errors.messages.must_include :title
    end
end

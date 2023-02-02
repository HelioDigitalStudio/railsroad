require "test_helper"

class UsersCareersPathTest < ActiveSupport::TestCase
  describe "UsersCareersPath validations" do
    it "must have a user" do
      users_careers_path = UsersCareersPath.new
      users_careers_path.valid?.must_equal false
      users_careers_path.errors.messages.must_include :user
    end

    it "must have a title" do
      users_careers_path = UsersCareersPath.new
      users_careers_path.valid?.must_equal false
      users_careers_path.errors.messages.must_include :title
    end
end

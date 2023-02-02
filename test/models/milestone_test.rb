require "test_helper"

class MilestoneTest < ActiveSupport::TestCase
  describe "Milestone validations" do
    it "must have a title" do
      milestone = Milestone.new
      milestone.valid?.must_equal false
      milestone.errors.messages.must_include :title
    end

    it "must have content" do
      milestone = Milestone.new
      milestone.valid?.must_equal false
      milestone.errors.messages.must_include :content
    end
  end
end

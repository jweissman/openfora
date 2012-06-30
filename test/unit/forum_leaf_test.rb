require 'test_helper'

class ForumLeafTest < ActiveSupport::TestCase
  test "the truth" do
    assert true
  end

  #
  # lol, don't test rails validations
  #
  # test "should be unique by name" do
  # 	alpha_one = Leaf.create name: 'alpha'
  #   alpha_two = Leaf.create name: 'alpha'
  #   assert alpha_one.valid?
  #   assert alpha_two.invalid?
  # end

end
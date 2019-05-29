require 'test_helper'

class PaperTest < ActiveSupport::TestCase
  fixtures :papers

  def setup
    @paper = papers(:one)
    @user = users(:one)
  end

  test "belongs an user" do
    assert_equal @paper.user , @user
  end

  test "has a title" do
    assert_equal @paper.title , "Mi documento"
  end

  test "has a resume" do
    assert_equal @paper.resume , "Este es mi primer documento"
  end
  
end

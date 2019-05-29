require 'test_helper'

class CommentTest < ActiveSupport::TestCase
    fixtures :comments

  def setup
    @comment = comments(:one)
  end

  test 'invalid comment' do
    assert_not @comment.valid?
  end

  test "enter an commentary" do
    assert_equal @comment.commentary , "MyText"
  end
end

require 'test_helper'

class ReviewTest < ActiveSupport::TestCase

  fixtures :reviews

  def setup
    @review = reviews(:one)
    @user = users(:one)
    @question = questions(:one)
    @evaluation = evaluations(:one)
  end

  test "has a  user " do
    assert_equal @user, @review.user
  end

  test "final score   " do
    assert_equal 1.5, @review.final_score
  end

  test "build evaluation  " do
    assert_equal @review.build_evaluation(@question), @evaluation
  end

  test "select quantitative evaluations  " do
    assert_equal @review.quantitative_evaluations(), [@evaluation]
  end

  test "select qualitative evaluations  " do
    assert_equal @review.qualitative_evaluations(), [@evaluation]
  end

end

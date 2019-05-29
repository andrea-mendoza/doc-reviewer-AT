require 'test_helper'

class EvaluationTest < ActiveSupport::TestCase
  def setup
    @evaluation = evaluations(:one)
  end

  test 'evaluation is quantitative' do
    assert_equal 1.5, @evaluation.is_quantitative?
  end

  test 'evaluation is qualitative' do
    assert_equal "MyText", @evaluation.is_qualitative?
  end
end

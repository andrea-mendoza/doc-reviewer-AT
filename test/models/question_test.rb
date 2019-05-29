require 'test_helper'

class QuestionTest < ActiveSupport::TestCase
  fixtures :questions

  def setup
    @question = questions(:one)
    @question1 = questions(:two)
    @question3 = questions(:three)

  end

  test "has a  description " do
    assert_equal "First question", @question.description
  end

  test "has a maximum score   " do
    assert_equal 2, @question.max_score
  end

  test "display type  not selected" do
    assert_equal "Type not set", @question3.display_type
  end

  test "display type  selected text" do
    assert_equal "Texto", @question.display_type
  end

  test "display type  selected select" do
    assert_equal "Escala", @question1.display_type
  end

  test "is quantitative type not set " do
    assert_equal 2, @question3.is_quantitative? 
  end

  test "is  quantitative type text " do
    assert_equal false, @question.is_quantitative? 
  end

  test "is  quantitative type select " do
    assert_equal true, @question1.is_quantitative? 
  end


end

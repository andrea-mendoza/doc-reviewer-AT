require 'test_helper'

class ClassroomTest < ActiveSupport::TestCase
  fixtures :classrooms

  def setup
    @classroom = classrooms(:one)
  end

  test "enter an ambient" do
    assert_equal @classroom.ambient , "MyString"
  end

  test "choose a hour" do
    assert_equal @classroom.defense_hour , "Sat, 01 Jan 2000 08:46:06 -04 -04:00"
  end

end

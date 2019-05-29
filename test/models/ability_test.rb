require 'test_helper'

class AbilityTest < ActiveSupport::TestCase
    fixtures :users

    def setup
        @student = users(:one)
        @director = users(:two)
        @review = reviews(:one)
        @event = events(:one) 
        @paper = papers(:one)
        @classroom = classrooms(:one)
    end
    
    test "student role can manage a review" do
        ability = Ability.new(@student)
        assert @student.valid?
        assert ability.can?(:manage, @review)
    end

    test "student role can manage a paper" do
        @student.role = "estudiante"
        ability = Ability.new(@student)
        assert @student.valid?
        assert ability.can?(:manage, @paper)
    end

    test "director can manage a student" do
        @director.role = "director"
        ability = Ability.new(@director)
        assert ability.can?(:manage, @student)
    end

    test "users can read Events, Papers and Reviews" do
        @student.role = "estudiante"
        ability = Ability.new(@student)
        assert ability.can?(:read, @event, @paper, @review)
    end

    test "admin can manage Event, Paper, Classroom" do
        @director.role = "director"
        @director.admin_role = true
        ability = Ability.new(@director)
        assert @director.valid?
        assert ability.can?(:manage, @event,@paper,@classroom)
    end
end

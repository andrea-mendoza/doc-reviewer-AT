require 'test_helper'

class EventTest < ActiveSupport::TestCase
    fixtures :events

    def setup
        @event = events(:one) 
    end

    test "Should be a valid event" do 
        assert @event.valid?
    end 

    test "should have name" do
        assert_equal "FirstRevision", @event.name
      end
    
end
require 'test_helper'

class OptionTest < ActiveSupport::TestCase
    fixtures :options

    def setup
        @option = options(:one) 
    end

    test 'valid option' do
        assert @option.valid?
    end
    
    test 'invalid option without point and description' do
        auxOption = Option.new
        assert_not auxOption.valid?
    end

    test 'invalid option without point ' do
        auxOption = Option.new(description:"Excellent")
        assert_not auxOption.valid?
    end

    test 'invalid option without description' do
        auxOption = Option.new(point:7)
        assert_not auxOption.valid?
    end

    test "Show option value" do 
        assert_equal 3, @option.value
    end  

    test "Show a point and a description" do 
        assert_equal "(3) Good", @option.show
    end 
    
end
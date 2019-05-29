require 'test_helper'

class UserTest < ActiveSupport::TestCase
    fixtures :users

    def setup
      @user = users(:one)
    #   @user1 = User.new
    #   @user1.username = "jm"
    #   @user1.email = "juan.pablo@sandoval.com"
    end
  
    test 'valid user' do
      assert @user.valid?
    end
  
    # test "Complete name" do
    #   assert_equal "juan pablo ", @user.complete_name
    # end
  
    # test "Validate username" do
    #   assert_nil @user.validate_username
    # end
  
    # test "Default role" do
    #   assert_equal "estudiante", @user1.role
    # end 
  
    # test "login method" do
    #   assert_equal "juan.pablo@sandoval.com",  @user.login
    # end 
end

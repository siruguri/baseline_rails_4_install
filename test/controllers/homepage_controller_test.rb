require 'test_helper'
class HomepageControllerTest < ActionController::TestCase
  test 'controller coverage' do
    get :show
    assert_match /cool things/, response.body
  end
end

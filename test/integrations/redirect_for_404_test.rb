require 'test_helper'

class RedirectFor404Test < Capybara::Rails::TestCase
  # General tests for what signed in and out users can see
  before do
    # In general, if your tests use JS enabled drivers, this will unset that - so it's commented out.
    # Capybara.default_driver = :rack_test
  end

  test '404 redirects to sign in page' do
    visit '/not_a_route_at_all'
    assert_equal root_path, current_path
  end
end

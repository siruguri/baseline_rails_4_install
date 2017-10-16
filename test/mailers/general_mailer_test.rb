require 'test_helper'
class GeneralMailerTest < ActiveSupport::TestCase
  test 'it works' do
    m = GeneralMailer.example_email 'hello@emails.com'
    assert m
  end
end

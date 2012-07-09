# == Schema Information
#
# Table name: authorizations
#
#  id         :integer         not null, primary key
#  provider   :string(255)
#  uid        :string(255)
#  user_id    :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

require 'test_helper'

class AuthorizationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

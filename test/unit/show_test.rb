# == Schema Information
#
# Table name: shows
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  start      :date
#  end        :date
#  created_at :datetime        not null
#  updated_at :datetime        not null
#  gallery_id :integer
#  hashtag    :string(255)
#

require 'test_helper'

class ShowTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end

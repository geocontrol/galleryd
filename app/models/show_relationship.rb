# == Schema Information
#
# Table name: show_relationships
#
#  id          :integer         not null, primary key
#  follower_id :integer
#  followed_id :integer
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#

class ShowRelationship < ActiveRecord::Base
  attr_accessible :followed_id, :follower_id
  
  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "Show"
  
  validates :follower_id, presence: true
  validates :followed_id, presence: true
end

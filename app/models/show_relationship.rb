class ShowRelationship < ActiveRecord::Base
  attr_accessible :followed_id, :follower_id
  
  belongs_to :follower, class_name: "User"
  belongs_to :followed, class_name: "Show"
  
  validates :follower_id, presence: true
  validates :followed_id, presence: true
end

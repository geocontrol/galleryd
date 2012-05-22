class User < ActiveRecord::Base
  attr_accessible :name
  has_many :authorizations
  
  has_many :show_relationships, foreign_key: "follower_id", dependent: :destroy


  
  def self.create_from_hash!(hash)
    create(:name => hash['info']['name'])
  end
  
  def following?(show)
    show_relationships.find_by_followed_id(show.id)
  end
  
  def follow!(show)
    show_relationships.create!(followed_id: show.id)
  end
  
  def unfollow!(show)
    show_relationships.find_by_followed_id(show.id).destroy
  end
  
end

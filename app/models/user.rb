# == Schema Information
#
# Table name: users
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#  provider   :string(255)
#  uid        :string(255)
#

class User < ActiveRecord::Base
  attr_accessible :name
  has_many :authorizations
  
  has_many :show_relationships, foreign_key: "follower_id", dependent: :destroy

  def self.from_omniauth(auth)  
    where(auth.slice("provider", "uid")).first || create_from_omniauth(auth)
  end  

    def self.create_from_omniauth(auth)  
      create! do |user|  
        user.provider = auth["provider"]  
        user.uid = auth["uid"]  
        user.name = auth["info"]["name"]  
      end  
    end
  
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

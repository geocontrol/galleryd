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
#

class Show < ActiveRecord::Base
  attr_accessible :end, :name, :start, :gallery_id
  belongs_to :gallery
  has_many :show_relationships, foreign_key: "followed_id", dependent: :destroy

end

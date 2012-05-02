# == Schema Information
#
# Table name: galleries
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  url        :text
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

class Gallery < ActiveRecord::Base
  attr_accessible :name, :url
  has_many :shows
end

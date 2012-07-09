# == Schema Information
#
# Table name: galleries
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  url        :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#  address1   :string(255)
#  address2   :string(255)
#  postcode   :string(255)
#

class Gallery < ActiveRecord::Base
  attr_accessible :name, :url, :address1, :address2, :postcode
  has_many :shows, dependent: :destroy
end

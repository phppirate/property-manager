class Property < ActiveRecord::Base
  has_many :property_details
  belongs_to :user
end

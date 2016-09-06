class Business < ActiveRecord::Base
  belongs_to :type
  validates_presence_of :name, :address, :phone_number, :web_address, :hours


end

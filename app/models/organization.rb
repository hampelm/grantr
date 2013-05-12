class Organization < ActiveRecord::Base
  has_many :grants_rcvd, :class_name => 'Grant', :foreign_key => 'to_id'
  has_many :grants_made, :class_name => 'Grant', :foreign_key => 'from_id'
  attr_accessible :description, :name, :type, :grants_rcvd, :grants_made
end

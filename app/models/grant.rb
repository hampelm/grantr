class Grant < ActiveRecord::Base
  belongs_to :from, :class_name => 'Organization', :foreign_key => "organzation_id"
  belongs_to :to, :class_name => 'Organization', :foreign_key => "organzation_id"
  attr_accessible :amount, :created, :end, :start, :from, :to
end

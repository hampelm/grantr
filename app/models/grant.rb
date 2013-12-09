class Grant < ActiveRecord::Base
  belongs_to :from, :class_name => 'Organization'
  belongs_to :to, :class_name => 'Organization'
  attr_accessible :amount, :starts, :ends, :from_id, :to_id, :from, :to
end

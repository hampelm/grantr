class Organization < ActiveRecord::Base
  extend FriendlyId
  attr_accessible :description, :name, :slug, :type, :grants_received, :grants_made

  friendly_id :name, use: :slugged

  has_many :grants_received, :class_name => 'Grant', :foreign_key => 'to_id'
  has_many :grants_made, :class_name => 'Grant', :foreign_key => 'from_id'

  validates :name, :uniqueness => true

  def grants_received_total
    grants_received.sum(:amount)
  end

  def grants_made_total
    grants_made.sum(:amount)
  end

end

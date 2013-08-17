class Organization < ActiveRecord::Base
  include ActiveModel::Serialization

  extend FriendlyId

  attr_accessible :description, :name, :slug, :type, :grants_received, :grants_made

  friendly_id :name, use: :slugged

  has_many :grants_received, :class_name => 'Grant', :foreign_key => 'to_id'
  has_many :grants_made, :class_name => 'Grant', :foreign_key => 'from_id'

  validates :name, :uniqueness => true

  def total_grants_received
    grants_received.sum(:amount)
  end

  def total_grants_made
    grants_made.sum(:amount)
  end

  def serializable_hash(options={})
    super.serializable_hash options.merge(methods: [:total_grants_received, :total_grants_made])
  end

end

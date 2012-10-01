class Party < ActiveRecord::Base
  attr_accessible :name, :guests_attributes

  has_many :guests
  has_many :rsvps, through: :guests

  accepts_nested_attributes_for :guests
end

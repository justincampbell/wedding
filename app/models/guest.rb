class Guest < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :party, :zip_code
  attr_accessible :rsvp_attributes

  validates_presence_of :first_name, :last_name, :zip_code

  belongs_to :party
  has_one :rsvp

  accepts_nested_attributes_for :rsvp

  store :attributes, accessors: [:invited_to_rehearsal_dinner]

  before_create -> { self.party ||= Party.create name: last_name }
  after_initialize -> { self.rsvp ||= Rsvp.new }

  def full_name
    "#{first_name} #{last_name}"
  end
end

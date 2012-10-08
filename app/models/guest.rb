class Guest < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :party, :zip_code
  attr_accessible :rsvp_attributes

  validates_presence_of :first_name, :zip_code
  validates_uniqueness_of :first_name, scope: [:last_name, :zip_code]

  belongs_to :party
  has_one :rsvp

  accepts_nested_attributes_for :rsvp

  store :settings, accessors: [:invited_to_rehearsal_dinner]

  after_initialize -> { self.rsvp ||= Rsvp.new }

  SEARCH_ATTRIBUTES = %w[first_name last_name zip_code]

  def self.for_login(params)
    predicate = self

    SEARCH_ATTRIBUTES.each do |search_attribute|
      predicate = predicate.where "#{search_attribute} like '#{params[search_attribute]}'"
    end

    predicate.first
  end

  def full_name
    "#{first_name} #{last_name}"
  end
end

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

  NICKNAMES = [
    %w[abigale abbe abbie abby],
    %w[al albert],
    %w[antonio anthony tony],
    %w[barbara barb],
    %w[beth elizabeth liz],
    %w[betty bett],
    %w[caroline carolyn carol],
    %w[catherine cathy],
    %w[cheryl cheri],
    %w[christopher chris],
    %w[curtis curt],
    %w[dan daniel],
    %w[dani daniel danielle],
    %w[david dave],
    %w[edward ed],
    %w[gregory greg],
    %w[jacqueline jackie],
    %w[janice janet jan],
    %w[jeffrey jeff],
    %w[jessica jess],
    %w[joseph joe],
    %w[jon john jonathon johnathon],
    %w[judith judy],
    %w[katherine katie],
    %w[louis lou],
    %w[matthew matt],
    %w[mike michael],
    %w[patrick pat],
    %w[phillip phil],
    %w[richard rich],
    %w[robert bob rob],
    %w[ruth ruthie],
    %w[samantha sam],
    %w[sarah sara],
    %w[stephen steven steve],
    %w[susan sue],
    %w[timothy tim timmy],
    %w[theodore ted],
    %w[thomas tom],
    %w[walter walt],
    %w[william will bill]
  ]

  SEARCH_ATTRIBUTES = %w[first_name last_name zip_code]

  def self.for_login(params)
    predicate = self

    SEARCH_ATTRIBUTES.each do |search_attribute|
      predicate = predicate.where where_query(search_attribute, params[search_attribute])
    end

    predicate.first
  end

  def full_name
    "#{first_name} #{last_name}"
  end

  private

  def self.like
    Rails.env.production? ? :ilike : :like
  end

  def self.nicknames_for_name(name)
    NICKNAMES.select { |nicknames| nicknames.include? name.to_s.downcase }.flatten
  end

  def self.where_query(field, value)
    value = value.to_s
    value.strip!
    value = value.split(" ").first

    (nicknames_for_name(value) | [value]).map { |string|
      "#{field} #{like} '#{string}'"
    }.join(" or ")
  end
end

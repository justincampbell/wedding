class Guest < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :zip_code

  validates_presence_of :first_name, :last_name, :zip_code

  before_create -> { self.party_name ||= last_name }

  def full_name
    "#{first_name} #{last_name}"
  end

  def party
    Party.new party_name
  end
end

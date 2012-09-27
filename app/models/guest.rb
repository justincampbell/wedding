class Guest < ActiveRecord::Base
  attr_accessible :first_name, :last_name, :zip_code

  validates_presence_of :first_name, :last_name, :zip_code

  def party
    Party.new self
  end
end

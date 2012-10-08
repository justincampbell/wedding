class Rsvp < ActiveRecord::Base
  attr_accessible :attending, :brunch, :bus, :meal, :rehearsal, :dietary

  belongs_to :guest

  has_paper_trail
end

class Rsvp < ActiveRecord::Base
  attr_accessible :attending, :brunch, :bus, :meal, :rehearsal, :dietary

  belongs_to :guest
end

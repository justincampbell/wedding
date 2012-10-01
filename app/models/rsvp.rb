class Rsvp < ActiveRecord::Base
  attr_accessible :attending, :brunch, :bus, :meal, :rehearsal

  belongs_to :guest
end

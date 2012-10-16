class Rsvp < ActiveRecord::Base
  attr_accessible :attending, :brunch, :bus, :meal, :rehearsal, :dietary

  belongs_to :guest

  validates :attending, inclusion: { in: [true, false] }, on: :update
  validates :meal, presence: true, if: :attending

  has_paper_trail
end

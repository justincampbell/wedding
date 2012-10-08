class AddDietaryToRsvp < ActiveRecord::Migration
  def change
    add_column :rsvps, :dietary, :string
  end
end

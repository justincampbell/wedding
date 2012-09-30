class AddPartyNameToGuest < ActiveRecord::Migration
  def change
    add_column :guests, :party_name, :string
  end
end

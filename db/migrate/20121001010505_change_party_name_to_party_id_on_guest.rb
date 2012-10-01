class ChangePartyNameToPartyIdOnGuest < ActiveRecord::Migration
  def change
    remove_column :guests, :party_name
    add_column :guests, :party_id, :integer
  end
end

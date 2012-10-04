class AddEntitlementsToGuest < ActiveRecord::Migration
  def change
    add_column :guests, :entitlements, :text
  end
end

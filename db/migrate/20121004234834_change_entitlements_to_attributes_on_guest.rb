class ChangeEntitlementsToAttributesOnGuest < ActiveRecord::Migration
  def change
    rename_column :guests, :entitlements, :attributes
  end
end

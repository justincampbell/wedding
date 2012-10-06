class RenameAttributesToSettingsOnGuest < ActiveRecord::Migration
  def change
    rename_column :guests, :attributes, :settings
  end
end

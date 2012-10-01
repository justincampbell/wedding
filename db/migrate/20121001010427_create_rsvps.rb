class CreateRsvps < ActiveRecord::Migration
  def change
    create_table :rsvps do |t|
      t.belongs_to :guest
      t.boolean :attending
      t.string :meal
      t.boolean :bus
      t.boolean :rehearsal
      t.boolean :brunch

      t.timestamps
    end
    add_index :rsvps, :guest_id
  end
end

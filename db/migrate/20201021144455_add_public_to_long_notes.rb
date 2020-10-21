class AddPublicToLongNotes < ActiveRecord::Migration[6.0]
  def change
    add_column :long_notes, :publicly_displayed, :boolean, null: false, default: false
  end
end

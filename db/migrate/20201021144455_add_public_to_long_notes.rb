class AddPublicToLongNotes < ActiveRecord::Migration[6.0]
  def change
    add_column :long_notes, :public, :boolean, null: false, default: false
  end
end

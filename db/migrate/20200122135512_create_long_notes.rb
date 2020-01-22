class CreateLongNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :long_notes do |t|
      t.string :title
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

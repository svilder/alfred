class CreateShortNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :short_notes do |t|
      t.text :description
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

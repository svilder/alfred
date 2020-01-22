class CreateKeywords < ActiveRecord::Migration[5.2]
  def change
    create_table :keywords do |t|
      t.string :title
      t.references :long_note, foreign_key: true

      t.timestamps
    end
  end
end

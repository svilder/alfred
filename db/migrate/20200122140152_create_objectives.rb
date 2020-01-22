class CreateObjectives < ActiveRecord::Migration[5.2]
  def change
    create_table :objectives do |t|
      t.string :title
      t.text :description
      t.string :date
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

class CreateToDoLists < ActiveRecord::Migration[5.2]
  def change
    create_table :to_do_lists do |t|
      t.string :title
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

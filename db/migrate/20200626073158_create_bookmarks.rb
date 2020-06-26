class CreateBookmarks < ActiveRecord::Migration[6.0]
  def change
    create_table :bookmarks do |t|
      t.string :title
      t.string :description
      t.string :category
      t.references :user, null: false, foreign_key: true
      t.string :url

      t.timestamps
    end
  end
end

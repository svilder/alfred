class CreateMissions < ActiveRecord::Migration[5.2]
  def change
    create_table :missions do |t|
      t.string :title
      t.text :description
      t.string :client_name
      t.string :time_spent
      t.integer :money_earned
      t.text :note
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

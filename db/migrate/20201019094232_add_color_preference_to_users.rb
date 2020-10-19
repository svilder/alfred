class AddColorPreferenceToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :color_preference, :string, null: false, default: "darkblue"
  end
end

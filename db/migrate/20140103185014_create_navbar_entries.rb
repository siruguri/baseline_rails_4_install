class CreateNavbarEntries < ActiveRecord::Migration
  def change
    create_table :navbar_entries do |t|
      t.string :title
      t.string :url
      t.integer :user_id

      t.timestamps
    end
  end
end

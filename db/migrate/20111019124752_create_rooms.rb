class CreateRooms < ActiveRecord::Migration
  def change
    create_table :rooms do |t|
      t.string :name
      t.belongs_to :account

      t.timestamps
    end
    add_index :rooms, :account_id
  end
end

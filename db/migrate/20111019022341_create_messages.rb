class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.belongs_to :user
      t.belongs_to :room
      t.string :body

      t.timestamps
    end
    add_index :messages, :user_id
    add_index :messages, :room_id
  end
end

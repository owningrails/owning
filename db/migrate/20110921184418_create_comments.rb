class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body
      t.belongs_to :user
      t.belongs_to :ticket

      t.timestamps
    end
    add_index :comments, :user_id
    add_index :comments, :ticket_id
  end
end

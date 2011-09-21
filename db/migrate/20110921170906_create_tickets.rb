class CreateTickets < ActiveRecord::Migration
  def change
    create_table :tickets do |t|
      t.string :title
      t.text :description
      t.belongs_to :user
      t.string :status, :default => "new"

      t.timestamps
    end
    add_index :tickets, :user_id
  end
end

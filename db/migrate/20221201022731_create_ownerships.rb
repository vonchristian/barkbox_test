class CreateOwnerships < ActiveRecord::Migration[5.2]
  def change
    create_table :ownerships do |t|
      t.belongs_to :dog, foreign_key: true
      t.belongs_to :owner, foreign_key: { to_table: :users }

      t.timestamps
    end
  end
end

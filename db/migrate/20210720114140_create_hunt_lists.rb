class CreateHuntLists < ActiveRecord::Migration[6.1]
  def change
    create_table :hunt_lists do |t|
      t.integer :bet
      t.integer :earn
      t.integer :ratio
      t.references :board, null: false, foreign_key: true
      t.references :machine, null: false, foreign_key: true
      t.references :state, null: false, foreign_key: true

      t.timestamps
    end
  end
end

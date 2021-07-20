class CreateBoards < ActiveRecord::Migration[6.1]
  def change
    create_table :boards do |t|
      t.string :name
      t.string :devise
      t.integer :start_bet
      t.integer :bet
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end

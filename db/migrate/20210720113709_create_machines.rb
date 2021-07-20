class CreateMachines < ActiveRecord::Migration[6.1]
  def change
    create_table :machines do |t|
      t.string :name
      t.integer :volatility
      t.string :article_url
      t.string :play_url
      t.references :provider, null: false, foreign_key: true

      t.timestamps
    end
  end
end

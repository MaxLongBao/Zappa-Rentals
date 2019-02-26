class CreateInstruments < ActiveRecord::Migration[5.2]
  def change
    create_table :instruments do |t|
      t.string :category
      t.string :condition
      t.string :location
      t.string :price
      t.boolean :available
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

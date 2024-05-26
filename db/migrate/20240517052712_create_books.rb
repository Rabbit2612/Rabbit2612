class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.references :author, null: false, foreign_key: true
      t.string :gener
      t.string :ISBN
      t.references :publisher, null: false, foreign_key: true
      t.float :price
      t.integer :stock_quantity

      t.timestamps
    end
  end
end

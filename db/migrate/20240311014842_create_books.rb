class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :title
      t.string :author
      t.integer :year
      t.datetime :borrowed_at
      t.boolean :avaibale
      t.references :subject, null: false, foreign_key: true

      t.timestamps
    end
  end
end

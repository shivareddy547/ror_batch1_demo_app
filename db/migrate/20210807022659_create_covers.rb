class CreateCovers < ActiveRecord::Migration[6.1]
  def change
    create_table :covers do |t|
      t.string :name
      t.integer :book_id

      t.timestamps
    end
  end
end

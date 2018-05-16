class DatabaseReset < ActiveRecord::Migration[5.2]
  def change
    drop_table :genres
    drop_table :books
    create_table :genres do |t|
      t.string :name
      t.text :desc
      t.timestamps
    end
    create_table :books do |t|
      t.string :title
      t.integer :year
      t.text :description
      t.string :author
      t.references :genre, foreign_key: true
      t.timestamps
    end
  end
end

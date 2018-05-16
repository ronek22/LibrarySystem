class AddAuthorsToBooks < ActiveRecord::Migration[5.2]
  def change
    drop_table :books
    drop_table :genres
    create_table :genres do |t|
      t.string :name
      t.text :desc
      t.timestamps
    end
    create_table :authors do |t|
      t.string :firstname
      t.string :lastname
      t.string :nationality
      t.text :bio
      t.date :date_of_birth
      t.timestamps
    end
    create_table :books do |t|
      t.string :title
      t.integer :year
      t.text :description
      t.references :genre, foreign_key: true
      t.references :author, foreign_key: true
      t.timestamps
    end
  end
end

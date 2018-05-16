class AddCascadeDeleting < ActiveRecord::Migration[5.2]
  def change
    drop_table :books
    drop_table :genres
    drop_table :authors
    create_table :genres, force: :cascade do |t|
      t.string :name
      t.text :desc
      t.timestamps
    end
    create_table :authors, force: :cascade do |t|
      t.string :firstname
      t.string :lastname
      t.string :nationality
      t.text :bio
      t.date :date_of_birth
      t.timestamps
    end
    create_table :books, force: :cascade do |t|
      t.string :title
      t.integer :year
      t.text :description
      t.references :genre, foreign_key: true
      t.references :author, foreign_key: true
      t.timestamps
    end
  end
end

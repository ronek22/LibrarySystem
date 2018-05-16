class Genre < ApplicationRecord
  has_many :books, dependent: :delete_all
  validates :name, :length => { :in => 3..20 }, presence: true

  def self.search(genre)
    if genre
      where('name LIKE ?', "%#{genre}%")
    else
      all
    end
  end
end

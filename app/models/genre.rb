class Genre < ApplicationRecord
  validates :name, :length => { :in => 3..20 }, presence: true

  def self.search(genre)
    if genre
      where('name LIKE ?', "%#{genre}%")
    else
      all
    end
  end
end

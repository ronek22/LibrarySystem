class Book < ApplicationRecord
  belongs_to :genre
  belongs_to :author

  validates :title, :length => { :in => 3..20 }, presence: true
  validates :year, format: { with: /\A\d+(?:\.\d{0,2})?\z/ }, numericality: { greater_than_or_equal_to: 0 }
  validates :description, :length => { :in => 0..300 }
  validate :year_in_the_future?

  def self.search(book)
    if book
      q = "%#{book}%"
      joins(:genre).joins(:author).where('title LIKE ? OR year LIKE ? OR genres.name LIKE ? OR authors.firstname LIKE ? OR authors.lastname LIKE ?', q, q, q, q, q)
    else
      all
end
  end


  private

  def year_in_the_future?
    if self.year != nil and self.year > Date.today.year
      errors.add("Books", " from the future can't exist :)")
    end
  end
end

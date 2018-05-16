class Author < ApplicationRecord
    has_many :books, dependent: :delete_all
    validates :firstname, :lastname,:length => { :in => 3..20 }, format: { with: /\A[A-ZĄĆĘŁŃÓŚŹŻ][a-ząćęłńóśźż]+\z/, message: " contain(s) numbers or/and first letter is small" }
    validates :bio, :length => { :in => 0..300 }

    def name
      "#{lastname} #{firstname}"
    end

    def self.search(author)
      if author
        where('firstname LIKE ? OR lastname LIKE ? OR nationality LIKE ?  OR date_of_birth LIKE ?', "%#{author}%", "%#{author}%", "%#{author}%", "%#{author}%")
      else
        all
      end
    end
end

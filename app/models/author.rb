class Author < ApplicationRecord
    validates :firstname, :lastname, :nationality, :length => { :in => 3..20 }, format: { with: /\A[A-ZĄĆĘŁŃÓŚŹŻ][a-ząćęłńóśźż]+\z/, message: " contain(s) numbers or/and first letter is small" }
    validates :bio, :length => { :in => 0..300 }

    def name
      "#{lastname} #{firstname}"
    end
end

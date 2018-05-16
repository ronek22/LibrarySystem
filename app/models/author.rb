class Author < ApplicationRecord
    validates :firstname, :lastname, :nationality, :length => { :in => 3..20 }, format: { with: /\A[A-ZĄĆĘŁŃÓŚŹŻ][a-ząćęłńóśźż]+\z/, message: " contain(s) numbers or/and first letter is small" }
    validates :bio, :length => { :in => 0..300 }

    # nie potrzebne przy date
    validates_each :date_of_birth do |record, attr, value|
      begin
        Date.parse(value)
      rescue
        record.errors.add(attr, "Invalid date")
      end
    end
    def name
    "#{lastname} #{firstname}"
    end
end

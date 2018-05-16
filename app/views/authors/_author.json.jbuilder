json.extract! author, :id, :firstname, :lastname, :nationality, :bio, :date_of_birth, :created_at, :updated_at
json.url author_url(author, format: :json)
